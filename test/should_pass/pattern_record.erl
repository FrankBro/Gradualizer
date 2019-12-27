-module(pattern_record).

-record(test, {
    field :: integer()
}).

-spec clause_match(term()) -> #test{} | not_test.
clause_match(#test{} = Test) -> Test;
clause_match(_) -> not_test.

-spec clause_match2(term()) -> #test{} | not_test.
clause_match2(Test = #test{}) -> Test;
clause_match2(_) -> not_test.
