-module(pattern_record).

-record(test, {
    field :: integer()
}).

-spec clause_match(term()) -> #test{} | not_test.
clause_match(#test{} = Test) -> Test;
clause_match(_) -> not_test.
