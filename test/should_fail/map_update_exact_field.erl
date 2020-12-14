-module(map_update_exact_field).

-compile(export_all).

-spec map_update_with_case(boolean(), map()) -> #{a := 1, b => 1, c => 1}.
map_update_with_case(Bool, Map1) ->
    Map2 = case Bool of
        true ->
            Map1#{a := 2};
        false ->
            Map1#{b := 1}
    end,
    Map2#{c := 1}.

-spec map_update_with_case_2(boolean(), map()) -> #{a := 1, b => 1, c => 1}.
map_update_with_case_2(Bool, Map1) ->
    Map2 = case Bool of
        true ->
            Map1#{a := 1};
        false ->
            Map1#{b := 1}
    end,
    Map2#{c := 1}.

-spec map_update_with_case_3(boolean(), map()) -> #{a := 1, b := 1, c => 1}.
map_update_with_case_3(Bool, Map1) ->
    Map2 = case Bool of
        true ->
            Map1#{a => 1};
        false ->
            Map1#{b => 1}
    end,
    Map2#{c := 1}.

-spec map_update_with_case_invalid_type(boolean(), map()) -> #{a := 1, b := 1, c => 1}.
map_update_with_case_invalid_type(Bool, Map1) ->
    Map2 = case Bool of
        true ->
            Map1#{a => 1};
        false ->
            [a, b]
    end,
    Map2#{c := 1}.