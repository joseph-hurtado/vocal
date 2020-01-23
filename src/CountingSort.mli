(*@ predicate k_values (k: int) (a: int seq) =
      forall i: integer. 0 <= i < length a -> 0 <= a[i] < k *)

val counting_sort: int -> int array -> int array -> unit
(*@ counting_sort k a b
      requires 0 < k
      requires k_values k a
      requires length a = length b
      modifies b
      ensures  Seq.sorted b
      ensures  SeqPerm.permut_all a b *)

val in_place_counting_sort: int -> int array -> unit
(*@ in_place_counting_sort k a
      requires 0 < k
      requires k_values k a
      modifies a
      ensures  Seq.sorted a
      ensures  SeqPerm.permut_all (old a) a *)