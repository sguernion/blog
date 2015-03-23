/* Generated by Opal 0.6.2 */
(function($opal) {
  var self = $opal.top, $scope = $opal, nil = $opal.nil, $breaker = $opal.breaker, $slice = $opal.slice, $klass = $opal.klass;

  $opal.add_stubs(['$resolve', '$new', '$reject', '$attr_reader', '$!', '$==', '$<<', '$>>', '$exception?', '$resolved?', '$value', '$rejected?', '$===', '$error', '$realized?', '$raise', '$^', '$call', '$resolve!', '$exception!', '$reject!', '$class', '$object_id', '$+', '$inspect', '$act?', '$prev', '$concat', '$it', '$lambda', '$reverse', '$each', '$wait', '$then', '$to_proc', '$map', '$reduce', '$always', '$try', '$tap', '$all?', '$find']);
  return (function($base, $super) {
    function $Promise(){};
    var self = $Promise = $klass($base, $super, 'Promise', $Promise);

    var def = self._proto, $scope = self._scope, TMP_1, TMP_2, TMP_3, TMP_4;

    def.success = def.exception = def.realized = def.delayed = def.failure = def.error = def.prev = def.next = def.value = nil;
    $opal.defs(self, '$value', function(value) {
      var self = this;

      return self.$new().$resolve(value);
    });

    $opal.defs(self, '$error', function(value) {
      var self = this;

      return self.$new().$reject(value);
    });

    $opal.defs(self, '$when', function(promises) {
      var self = this;

      promises = $slice.call(arguments, 0);
      return $scope.When.$new(promises);
    });

    self.$attr_reader("value", "error", "prev", "next");

    def.$initialize = function(success, failure) {
      var self = this;

      if (success == null) {
        success = nil
      }
      if (failure == null) {
        failure = nil
      }
      self.success = success;
      self.failure = failure;
      self.realized = nil;
      self.exception = false;
      self.value = nil;
      self.error = nil;
      self.delayed = nil;
      self.prev = nil;
      return self.next = nil;
    };

    def['$act?'] = function() {
      var self = this;

      return self.success['$=='](nil)['$!']();
    };

    def['$exception?'] = function() {
      var self = this;

      return self.exception;
    };

    def['$realized?'] = function() {
      var self = this;

      return self.realized['$=='](nil)['$!']();
    };

    def['$resolved?'] = function() {
      var self = this;

      return self.realized['$==']("resolve");
    };

    def['$rejected?'] = function() {
      var self = this;

      return self.realized['$==']("reject");
    };

    def['$^'] = function(promise) {
      var self = this;

      promise['$<<'](self);
      self['$>>'](promise);
      return promise;
    };

    def['$<<'] = function(promise) {
      var self = this;

      self.prev = promise;
      return self;
    };

    def['$>>'] = function(promise) {
      var $a, $b, $c, $d, self = this;

      self.next = promise;
      if ((($a = self['$exception?']()) !== nil && (!$a._isBoolean || $a == true))) {
        promise.$reject(self.delayed)
      } else if ((($a = self['$resolved?']()) !== nil && (!$a._isBoolean || $a == true))) {
        promise.$resolve(((($a = self.delayed) !== false && $a !== nil) ? $a : self.$value()))
      } else if ((($a = ($b = self['$rejected?'](), $b !== false && $b !== nil ?(((($c = self.failure['$!']()) !== false && $c !== nil) ? $c : $scope.Promise['$===']((((($d = self.delayed) !== false && $d !== nil) ? $d : self.error))))) : $b)) !== nil && (!$a._isBoolean || $a == true))) {
        promise.$reject(((($a = self.delayed) !== false && $a !== nil) ? $a : self.$error()))};
      return self;
    };

    def.$resolve = function(value) {
      var $a, self = this, e = nil;

      if (value == null) {
        value = nil
      }
      if ((($a = self['$realized?']()) !== nil && (!$a._isBoolean || $a == true))) {
        self.$raise($scope.ArgumentError, "the promise has already been realized")};
      if ((($a = $scope.Promise['$==='](value)) !== nil && (!$a._isBoolean || $a == true))) {
        value['$<<'](self.prev);
        return value['$^'](self);};
      self.realized = "resolve";
      self.value = value;
      try {
      if ((($a = self.success) !== nil && (!$a._isBoolean || $a == true))) {
          value = self.success.$call(value)};
        self['$resolve!'](value);
      } catch ($err) {if ($opal.$rescue($err, [$scope.Exception])) {e = $err;
        self['$exception!'](e)
        }else { throw $err; }
      };
      return self;
    };

    def['$resolve!'] = function(value) {
      var $a, self = this;

      if ((($a = self.next) !== nil && (!$a._isBoolean || $a == true))) {
        return self.next.$resolve(value)
        } else {
        return self.delayed = value
      };
    };

    def.$reject = function(value) {
      var $a, self = this, e = nil;

      if (value == null) {
        value = nil
      }
      if ((($a = self['$realized?']()) !== nil && (!$a._isBoolean || $a == true))) {
        self.$raise($scope.ArgumentError, "the promise has already been realized")};
      if ((($a = $scope.Promise['$==='](value)) !== nil && (!$a._isBoolean || $a == true))) {
        value['$<<'](self.prev);
        return value['$^'](self);};
      self.realized = "reject";
      self.error = value;
      try {
      if ((($a = self.failure) !== nil && (!$a._isBoolean || $a == true))) {
          value = self.failure.$call(value);
          if ((($a = $scope.Promise['$==='](value)) !== nil && (!$a._isBoolean || $a == true))) {
            self['$reject!'](value)};
          } else {
          self['$reject!'](value)
        }
      } catch ($err) {if ($opal.$rescue($err, [$scope.Exception])) {e = $err;
        self['$exception!'](e)
        }else { throw $err; }
      };
      return self;
    };

    def['$reject!'] = function(value) {
      var $a, self = this;

      if ((($a = self.next) !== nil && (!$a._isBoolean || $a == true))) {
        return self.next.$reject(value)
        } else {
        return self.delayed = value
      };
    };

    def['$exception!'] = function(error) {
      var self = this;

      self.exception = true;
      return self['$reject!'](error);
    };

    def.$then = TMP_1 = function() {
      var self = this, $iter = TMP_1._p, block = $iter || nil;

      TMP_1._p = null;
      return self['$^']($scope.Promise.$new(block));
    };

    $opal.defn(self, '$do', def.$then);

    def.$fail = TMP_2 = function() {
      var self = this, $iter = TMP_2._p, block = $iter || nil;

      TMP_2._p = null;
      return self['$^']($scope.Promise.$new(nil, block));
    };

    $opal.defn(self, '$rescue', def.$fail);

    $opal.defn(self, '$catch', def.$fail);

    def.$always = TMP_3 = function() {
      var self = this, $iter = TMP_3._p, block = $iter || nil;

      TMP_3._p = null;
      return self['$^']($scope.Promise.$new(block, block));
    };

    $opal.defn(self, '$finally', def.$always);

    $opal.defn(self, '$ensure', def.$always);

    def.$trace = TMP_4 = function() {
      var self = this, $iter = TMP_4._p, block = $iter || nil;

      TMP_4._p = null;
      return self['$^']($scope.Trace.$new(block));
    };

    def.$inspect = function() {
      var $a, self = this, result = nil;

      result = "#<" + (self.$class()) + "(" + (self.$object_id()) + ")";
      if ((($a = self.next) !== nil && (!$a._isBoolean || $a == true))) {
        result = result['$+'](" >> " + (self.next.$inspect()))};
      if ((($a = self['$realized?']()) !== nil && (!$a._isBoolean || $a == true))) {
        result = result['$+'](": " + ((((($a = self.value) !== false && $a !== nil) ? $a : self.error)).$inspect()) + ">")
        } else {
        result = result['$+'](">")
      };
      return result;
    };

    (function($base, $super) {
      function $Trace(){};
      var self = $Trace = $klass($base, $super, 'Trace', $Trace);

      var def = self._proto, $scope = self._scope, TMP_6;

      $opal.defs(self, '$it', function(promise) {
        var $a, self = this, current = nil, prev = nil;

        if ((($a = promise['$realized?']()) !== nil && (!$a._isBoolean || $a == true))) {
          } else {
          self.$raise($scope.ArgumentError, "the promise hasn't been realized")
        };
        current = (function() {if ((($a = promise['$act?']()) !== nil && (!$a._isBoolean || $a == true))) {
          return [promise.$value()]
          } else {
          return []
        }; return nil; })();
        if ((($a = prev = promise.$prev()) !== nil && (!$a._isBoolean || $a == true))) {
          return current.$concat(self.$it(prev))
          } else {
          return current
        };
      });

      return (def.$initialize = TMP_6 = function(block) {
        var $a, $b, TMP_5, self = this, $iter = TMP_6._p, $yield = $iter || nil;

        TMP_6._p = null;
        return $opal.find_super_dispatcher(self, 'initialize', TMP_6, null).apply(self, [($a = ($b = self).$lambda, $a._p = (TMP_5 = function(){var self = TMP_5._s || this, $a;

        return ($a = block).$call.apply($a, [].concat($scope.Trace.$it(self).$reverse()))}, TMP_5._s = self, TMP_5), $a).call($b)]);
      }, nil) && 'initialize';
    })(self, self);

    return (function($base, $super) {
      function $When(){};
      var self = $When = $klass($base, $super, 'When', $When);

      var def = self._proto, $scope = self._scope, TMP_7, TMP_9, TMP_11, TMP_13, TMP_17;

      def.wait = nil;
      def.$initialize = TMP_7 = function(promises) {
        var $a, $b, TMP_8, self = this, $iter = TMP_7._p, $yield = $iter || nil;

        if (promises == null) {
          promises = []
        }
        TMP_7._p = null;
        $opal.find_super_dispatcher(self, 'initialize', TMP_7, null).apply(self, []);
        self.wait = [];
        return ($a = ($b = promises).$each, $a._p = (TMP_8 = function(promise){var self = TMP_8._s || this;
if (promise == null) promise = nil;
        return self.$wait(promise)}, TMP_8._s = self, TMP_8), $a).call($b);
      };

      def.$each = TMP_9 = function() {
        var $a, $b, TMP_10, self = this, $iter = TMP_9._p, block = $iter || nil;

        TMP_9._p = null;
        if (block !== false && block !== nil) {
          } else {
          self.$raise($scope.ArgumentError, "no block given")
        };
        return ($a = ($b = self).$then, $a._p = (TMP_10 = function(values){var self = TMP_10._s || this, $a, $b;
if (values == null) values = nil;
        return ($a = ($b = values).$each, $a._p = block.$to_proc(), $a).call($b)}, TMP_10._s = self, TMP_10), $a).call($b);
      };

      def.$collect = TMP_11 = function() {
        var $a, $b, TMP_12, self = this, $iter = TMP_11._p, block = $iter || nil;

        TMP_11._p = null;
        if (block !== false && block !== nil) {
          } else {
          self.$raise($scope.ArgumentError, "no block given")
        };
        return ($a = ($b = self).$then, $a._p = (TMP_12 = function(values){var self = TMP_12._s || this, $a, $b;
if (values == null) values = nil;
        return $scope.When.$new(($a = ($b = values).$map, $a._p = block.$to_proc(), $a).call($b))}, TMP_12._s = self, TMP_12), $a).call($b);
      };

      def.$inject = TMP_13 = function(args) {
        var $a, $b, TMP_14, self = this, $iter = TMP_13._p, block = $iter || nil;

        args = $slice.call(arguments, 0);
        TMP_13._p = null;
        return ($a = ($b = self).$then, $a._p = (TMP_14 = function(values){var self = TMP_14._s || this, $a, $b;
if (values == null) values = nil;
        return ($a = ($b = values).$reduce, $a._p = block.$to_proc(), $a).apply($b, [].concat(args))}, TMP_14._s = self, TMP_14), $a).call($b);
      };

      $opal.defn(self, '$map', def.$collect);

      $opal.defn(self, '$reduce', def.$inject);

      def.$wait = function(promise) {
        var $a, $b, TMP_15, self = this;

        if ((($a = $scope.Promise['$==='](promise)) !== nil && (!$a._isBoolean || $a == true))) {
          } else {
          promise = $scope.Promise.$value(promise)
        };
        if ((($a = promise['$act?']()) !== nil && (!$a._isBoolean || $a == true))) {
          promise = promise.$then()};
        self.wait['$<<'](promise);
        ($a = ($b = promise).$always, $a._p = (TMP_15 = function(){var self = TMP_15._s || this, $a;
          if (self.next == null) self.next = nil;

        if ((($a = self.next) !== nil && (!$a._isBoolean || $a == true))) {
            return self.$try()
            } else {
            return nil
          }}, TMP_15._s = self, TMP_15), $a).call($b);
        return self;
      };

      $opal.defn(self, '$and', def.$wait);

      def['$>>'] = TMP_17 = function() {var $zuper = $slice.call(arguments, 0);
        var $a, $b, TMP_16, self = this, $iter = TMP_17._p, $yield = $iter || nil;

        TMP_17._p = null;
        return ($a = ($b = $opal.find_super_dispatcher(self, '>>', TMP_17, $iter).apply(self, $zuper)).$tap, $a._p = (TMP_16 = function(){var self = TMP_16._s || this;

        return self.$try()}, TMP_16._s = self, TMP_16), $a).call($b);
      };

      return (def.$try = function() {
        var $a, $b, $c, $d, self = this, promise = nil;

        if ((($a = ($b = ($c = self.wait)['$all?'], $b._p = "realized?".$to_proc(), $b).call($c)) !== nil && (!$a._isBoolean || $a == true))) {
          if ((($a = promise = ($b = ($d = self.wait).$find, $b._p = "rejected?".$to_proc(), $b).call($d)) !== nil && (!$a._isBoolean || $a == true))) {
            return self.$reject(promise.$error())
            } else {
            return self.$resolve(($a = ($b = self.wait).$map, $a._p = "value".$to_proc(), $a).call($b))
          }
          } else {
          return nil
        };
      }, nil) && 'try';
    })(self, self);
  })(self, null)
})(Opal);

//# sourceMappingURL=/__opal_source_maps__/promise.js.map
;
