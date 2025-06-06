import equational_theories.Equations.All
import equational_theories.Magma

private def congr_op {G: Type _} [Magma G] {a b c d: G} (h1: a = b) (h2: c = d): a ◇ c = b ◇ d := by
  rw [h1, h2]
private abbrev T := @Eq.trans
private abbrev S := @Eq.symm
private abbrev R := @Eq.refl
private abbrev M := @Magma.op
private abbrev C := @congr_op

@[equational_result]
theorem Equation522_implies_Equation2180 (G: Type _) [Magma G] (h: Equation522 G) : Equation2180 G := fun x y z =>
  let v0 := M y z
  let v1 := M v0 y
  let v2 := M x z
  have h3 := h y v1 v1
  have h4 := h v0 v1 y
  have h5 := R v1
  have h6 := R v0
  have h7 := C h6 (T (C h5 h4) (S h3))
  have h8 := R v2
  have h9 := C h6 (T h3 (C h5 (S h4)))
  have h10 := h v1 v1 v0
  have h11 := S h10
  have h12 := C h5 (C h5 h9)
  have h13 := C h5 (C h5 h7)
  have h14 := h v1 y y
  have h15 := S h14
  have h16 := h y v0 v0
  have h17 := S h16
  have h18 := h v0 y y
  have h19 := T h12 h11
  have h20 := R y
  have h21 := h v1 y v1
  have h22 := C h20 (T (C h20 (T (T (T h12 h11) h21) (C h20 (C h20 h19)))) (S h18))
  have h23 := C h6 (T (T (T h12 h11) h21) h22)
  have h24 := h v1 v0 v1
  have h25 := S h21
  have h26 := T h10 h13
  have h27 := C h20 (T h18 (C h20 (T (T (T (C h20 (C h20 h26)) h25) h10) h13)))
  have h28 := C h6 (T (T (T h27 h25) h24) (C h6 h23))
  have h29 := C h6 h26
  have h30 := C h5 (T (T (T h29 h23) h28) h17)
  have h31 := h v0 y v1
  have h32 := h v0 v1 v1
  have h33 := S h32
  have h34 := C h6 h19
  have h35 := C h6 (T (T (T h27 h25) h10) h13)
  have h36 := C h5 (T h35 h34)
  have h37 := h y v1 v0
  have h38 := C h5 (T (T (T h28 h17) h37) (C h5 h36))
  have h39 := C h5 (T h29 h23)
  have h40 := C h6 (T (T (T (C h6 h35) (S h24)) h21) h22)
  have h41 := C h5 (T (T (T h16 h40) h35) h34)
  have h42 := C h20 (T (T (T (T (T h41 h39) h38) h33) h31) (C h20 (C h20 h30)))
  have h43 := C h5 (T (T (T (C h5 h39) (S h37)) h16) h40)
  have h44 := C h20 (T (T (T (T (T (C h20 (C h20 h41)) (S h31)) h32) h43) h36) h30)
  have h45 := h v1 z v1
  have h46 := R z
  let v47 := M v1 v2
  have h48 := h z v47 y
  have h49 := S h48
  have h50 := h y z z
  have h51 := h v0 v0 v1
  have h52 := S h51
  have h53 := C h6 (C h6 (T (T h32 h43) h36))
  have h54 := h v0 z v0
  have h55 := R v47
  have h56 := C h55 (C h55 (C h20 (T (T (T (T (T h41 h39) h38) h33) h54) (C h46 (T (C h46 (T (T (T h53 h52) h54) (C h46 (C h46 (T h53 h52))))) (S h50))))))
  have h57 := h v1 v47 y
  have h58 := T (T h57 h56) h49
  have h59 := S h57
  have h60 := S h54
  have h61 := C h6 (C h6 (T (T h39 h38) h33))
  have h62 := C h55 (C h55 (C h20 (T (T (T (T (T (C h46 (T h50 (C h46 (T (T (T (C h46 (C h46 (T h51 h61))) h60) h51) h61)))) h60) h32) h43) h36) h30)))
  have h63 := T (T h48 h62) h59
  have h64 := h v1 z y
  have h65 := S h64
  have h66 := C h46 (C h58 (T (T (T (T h48 h62) h59) h14) h44))
  have h67 := C h46 (C h63 (T (T (T (T h42 h15) h57) h56) h49))
  have h68 := h v1 x z
  have h69 := S h68
  have h70 := h z v2 v2
  have h71 := S h70
  have h72 := h x v2 z
  have h73 := C h8 h72
  have h74 := R x
  have h75 := C h74 (T (T (T (T (T (T h73 h71) h48) h62) h59) h64) h67)
  have h76 := C h8 (S h72)
  have h77 := h v2 x x
  have h78 := C h74 (T (T h77 (C h74 (T (T (T (T (T (T (C h74 h75) h69) h57) h56) h49) h70) h76))) h75)
  have h79 := h x v1 v2
  have h80 := C h74 (T (T (T (T (T (T h66 h65) h57) h56) h49) h70) h76)
  T h79 (C h5 (T (C h5 (T (T (T (C h8 (T (T (T h78 h69) (h v1 v2 z)) (C h8 (C h8 (T (T (T h66 h65) h68) (C h74 (T (T h80 (C h74 (T (T (T (T (T (T h73 h71) h48) h62) h59) h68) (C h74 h80)))) (S h77)))))))) (S (h x v2 v2))) h79) (C h5 (C h5 (T (T (T (T (T (C h8 (T (T (T h78 h69) h64) h67)) (C h8 (T (T (T h66 h65) h45) (C h63 (C h46 h19))))) (C h8 (T (T (T (C h58 (C h46 h26)) (S h45)) h14) h44))) (C h8 (T (T (T h42 h15) h10) h13))) (C h8 (T (T h12 h11) h9))) (C h8 h7)))))) (S (h v2 v1 v1))))

@[equational_result]
theorem Equation3178_implies_Equation2 (G: Type _) [Magma G] (h: Equation3178 G) : Equation2 G := fun x y =>
  let v0 := M x y
  let v1 := M v0 y
  have h2 := R y
  have h3 := h y v0 y
  let v4 := M x x
  have h5 := h x v4 x
  have h6 := S h5
  have h7 := R x
  have h8 := h x x x
  have h9 := C h8 h7
  have h10 := T h9 h6
  have h11 := h x x y
  have h12 := S h11
  have h13 := C h12 h2
  have h14 := C h13 h7
  let v15 := M v0 x
  have h16 := h y v15 x
  have h17 := h y (M v15 x) y
  have h18 := S h17
  have h19 := C h11 h2
  have h20 := C (C h19 h2) h2
  have h21 := S h16
  have h22 := C h19 h7
  have h23 := T h22 h21
  have h24 := R v0
  have h25 := C (C h24 h23) h23
  have h26 := T (T (T h20 h18) h16) h14
  have h27 := R v15
  let v28 := M v4 y
  have h29 := h x v28 y
  have h30 := S h29
  have h31 := h y x x
  have h32 := C h31 h7
  have h33 := C h32 h2
  have h34 := T h33 h30
  have h35 := C h34 h2
  let v36 := M y x
  let v37 := M v36 y
  have h38 := h v37 x y
  have h39 := S h38
  have h40 := R v37
  have h41 := C (S h31) h7
  have h42 := C h41 h2
  have h43 := h x (M v28 y) x
  have h44 := S h43
  have h45 := C (C h32 h7) h7
  have h46 := T (T (T h45 h44) h29) h42
  have h47 := C h24 h46
  have h48 := C (C h41 h7) h7
  have h49 := T h43 h48
  have h50 := C h24 h49
  have h51 := S h3
  have h52 := h y x y
  have h53 := C h52 h2
  have h54 := C (T (T (T (T (T h53 h51) h16) h14) h50) h47) h40
  have h55 := C (S h52) h2
  have h56 := T h45 h44
  have h57 := C h24 h56
  have h58 := T (T (T (T h57 h22) h21) h3) h55
  have h59 := C h58 h46
  have h60 := R (M (M v36 x) x)
  have h61 := T (T (T (T h53 h51) h16) h14) h50
  have h62 := C h61 h60
  have h63 := T h3 h55
  have h64 := C h63 h49
  have h65 := C (T (T (T h64 h62) h59) h54) h23
  have h66 := C (T h65 h39) h23
  have h67 := T h16 h14
  have h68 := T h53 h51
  have h69 := C h68 h56
  have h70 := C h58 h60
  have h71 := T (T (T h33 h30) h43) h48
  have h72 := C h61 h71
  have h73 := C h24 h71
  have h74 := C (T (T (T (T (T h73 h57) h22) h21) h3) h55) h40
  have h75 := C (T (T (T h74 h72) h70) h69) h67
  have h76 := C (T (T (T (T (T h9 h6) h29) h42) h38) h75) h27
  have h77 := C (S h8) h7
  have h78 := C (T (T (T (T (T h65 h39) h33) h30) h5) h77) h27
  have h79 := C (T h38 h75) h67
  have h80 := T h29 h42
  have h81 := C h80 h2
  have h82 := C (T (C (T (T h81 h79) h78) h26) (C (T (T h76 h66) h35) h27)) h26
  have h83 := C (C h13 h2) h2
  have h84 := T (T (T h53 h51) h17) h83
  let v85 := M v1 y
  have h86 := R v85
  have h87 := T (T (T (C (T (T (T (T h64 h62) h59) h54) (C (T h73 h57) h34)) (T h20 h18)) h12) h5) h77
  have h88 := T (T (T h9 h6) h11) (C (T (T (T (T (C (T h50 h47) h80) h74) h72) h70) h69) (T h17 h83))
  have h89 := R v4
  have h90 := C h88 (T (T (T h22 h21) h17) h83)
  have h91 := C (T (T (T (C (T (T (T (T (T (T h81 h79) h78) h90) (C h87 h86)) (C h89 (T (T (T h20 h18) h3) h55))) (C h89 h68)) h68) (C (C h89 h63) h63)) (C (C h89 h84) h84)) (C (T (T (T (T (C h88 h86) (C h87 h26)) h76) h66) h35) h86)) h84
  have h92 := h (M y y) x y
  T (T (T (T (h x (M v4 x) x) (C h6 h7)) (h v4 x y)) (C (T (T (C (T (T (T (T (T (T (T (C (T (T (T h81 h79) h78) h90) h10) (S (h v85 y x))) h20) h18) h3) h55) h92) (C (T (T (T (T (T (T (T (T h91 h82) h25) h20) h18) h3) h55) h92) (C (T (T (T (T (T (T h91 h82) h25) h20) h18) h16) h14) h2)) h2)) h10) (S (h y v0 x))) h3) h2)) (S (h y v1 y))

@[equational_result]
theorem Equation2095_implies_Equation2 (G: Type _) [Magma G] (h: Equation2095 G) : Equation2 G := fun x y =>
  have h0 := h y x x
  have h1 := S h0
  let v2 := M (M x y) y
  let v3 := M x x
  have h4 := h v3 v2 x
  have h5 := S h4
  have h6 := R v3
  have h7 := C (C h0 h6) h6
  have h8 := C (C h1 h6) h6
  let v9 := M (M x v2) v2
  have h10 := h v3 v9 y
  have h11 := S h10
  let v12 := M y y
  have h13 := R v12
  have h14 := h v2 x x
  have h15 := C (T h0 (C h14 h6)) h13
  have h16 := h y x y
  have h17 := h v2 x y
  have h18 := S h17
  have h19 := C (T (C h18 h13) (S h16)) h13
  have h20 := h v12 v9 y
  have h21 := T (T (T h15 h11) h4) h8
  have h22 := R y
  have h23 := C (T (C (S h14) h6) h1) h13
  let v24 := M v3 x
  have h25 := h v3 (M (M x v24) v24) x
  have h26 := S h25
  have h27 := h v24 x x
  have h28 := h x x x
  have h29 := C (T h28 (C h27 h6)) h6
  have h30 := R x
  have h31 := C h30 (T h29 h26)
  have h32 := S h28
  have h33 := C (T (C (S h27) h6) h32) h6
  have h34 := h v3 v24 y
  have h35 := S h34
  have h36 := S h20
  have h37 := C (T h16 (C h17 h13)) h13
  have h38 := T (T (T h10 h23) h37) h36
  have h39 := C (C h28 h6) h38
  have h40 := C h30 (T (T (T h39 h35) h25) h33)
  have h41 := T (T (T h20 h19) h15) h11
  have h42 := C (C h32 h6) h41
  let v43 := M v12 y
  have h44 := h v3 (M (M x v43) v43) y
  have h45 := S h44
  have h46 := h v43 x x
  have h47 := h y y x
  have h48 := C (T h47 (C h46 h6)) h38
  have h49 := C h30 (T (T (T h48 h45) h34) h42)
  have h50 := C (T (C (S h46) h6) (S h47)) h41
  have h51 := h v3 x y
  have h52 := S h51
  have h53 := C (T (T (T h15 h11) h34) h42) h13
  have h54 := C h30 (T (T (T h53 h52) h44) h50)
  have h55 := C (T (T (T h39 h35) h10) h23) h13
  have h56 := C h30 (T (T (T (T (T h20 h19) h15) h11) h51) h55)
  let v57 := M x v12
  have h58 := h v57 x x
  have h59 := S h58
  have h60 := C h30 (T (T (T (T (T h53 h52) h10) h23) h37) h36)
  have h61 := C h30 (T (T (T h48 h45) h51) h55)
  have h62 := C h30 (T (T (T h39 h35) h44) h50)
  have h63 := C h30 (T (T (T h29 h26) h34) h42)
  have h64 := C h30 (T h25 h33)
  have h65 := T (T (T (T (T (T h25 h33) h64) h63) h62) h61) h60
  have h66 := T (T (T (T (T (T (T (T (T (T h20 h19) h15) h11) h25) h33) h64) h63) h62) h61) h60
  have h67 := C h30 h66
  have h68 := h v12 y x
  have h69 := T (T (T (T (T (T h56 h54) h49) h40) h31) h29) h26
  have h70 := T (T (T (T (T (T (T (T (T (T h56 h54) h49) h40) h31) h29) h26) h10) h23) h37) h36
  have h71 := h v57 y x
  have h72 := C (T h71 (C (T (T (T (T (T (T (T (T (T (T (T (T (T (C (T (T (T (T (C h22 h70) h15) h11) h51) h55) h69) (S h68)) h20) h19) h15) h11) h25) h33) h64) h63) h62) h61) h60) h67) h65)) h41
  have h73 := T (T (T (T (T (T (T (T (T (T h72 h59) h56) h54) h49) h40) h31) h29) h26) h10) h23
  have h74 := C h22 h66
  have h75 := C h30 h70
  have h76 := C (T (C (T (T (T (T (T (T (T (T (T (T (T (T (T h75 h56) h54) h49) h40) h31) h29) h26) h10) h23) h37) h36) h68) (C (T (T (T (T h53 h52) h10) h23) h74) h65)) h69) (S h71)) h38
  have h77 := T h58 h76
  let v78 := M (M y v24) v24
  T (T (T (T (T (h x x y) (C (T (h v24 y x) (C (h v78 y x) h6)) h13)) (S (h v3 (M (M y v78) v78) y))) (h v3 (M (M y v9) v9) v3)) (C (T (C (S (h v9 y x)) h38) h18) (T (T (T (T (C (T (T (T (T (T (T (T (T (T (T h25 h33) h64) h63) h62) h61) h60) h67) (C h30 h77)) (C h30 h73)) (C h30 h21)) (T h4 h8)) (C (T (T (T (T (T (T (T (T (T (T (T (T (T (C h30 (T (T (T h7 h5) h10) h23)) (C h30 (T (T (T (T (T (T (T (T (T (T h15 h11) h25) h33) h64) h63) h62) h61) h60) h58) h76))) (C h30 (T h72 h59))) h75) h56) h54) h49) h40) h31) h29) h26) h51) h55) (C (T (T (T h74 (C h22 h77)) (C h22 h73)) (C h22 h21)) (T (T (T (T (T h20 h19) h15) h11) h4) h8))) (T h7 h5))) (S (h (M (M y v3) v3) y x))) h7) h5))) h1

@[equational_result]
theorem Equation1040_implies_Equation4 (G: Type _) [Magma G] (h: Equation1040 G) : Equation4 G := fun x y =>
  have h0 := R y
  let v1 := M x y
  have h2 := h x x v1
  have h3 := h x x x
  have h4 := S h3
  let v5 := M x (M x x)
  have h6 := R v5
  have h7 := h v5 x y
  let v8 := M v5 x
  have h9 := h v5 x v8
  have h10 := S h9
  have h11 := R v8
  have h12 := C h6 (T h3 (C h3 h11))
  have h13 := R x
  have h14 := C h6 (T (C h4 h11) h4)
  have h15 := h x y x
  have h16 := S h15
  let v17 := M y v1
  have h18 := h v17 x y
  have h19 := S h18
  have h20 := R v17
  have h21 := C h20 (C h15 h0)
  have h22 := T h21 h19
  have h23 := C h22 h13
  have h24 := C h13 h23
  have h25 := C h20 (C h16 h0)
  have h26 := T h18 h25
  have h27 := C h26 h13
  have h28 := T h24 h16
  have h29 := C h28 h27
  have h30 := h x v1 y
  let v31 := M (M v1 (M x v1)) y
  have h32 := R v31
  have h33 := C h22 (T (C h28 h32) (S h30))
  let v34 := M v17 v1
  have h35 := h v34 x v31
  have h36 := h v34 x (M v17 x)
  have h37 := S h36
  have h38 := C h13 h27
  have h39 := T h15 h38
  have h40 := C h39 h23
  have h41 := S h35
  have h42 := C h26 (T h30 (C h39 h32))
  have h43 := C (T h42 h41) (T (T h15 h38) h40)
  have h44 := C h28 (T (T (T h42 h41) h36) (C (T h35 h33) (T (T h29 h24) h16)))
  have h45 := R v1
  have h46 := C h22 h45
  let v47 := M v1 v17
  have h48 := R v47
  have h49 := C h45 (T (T h46 h21) h19)
  have h50 := C h26 h45
  let v51 := M x (M y x)
  let v52 := M v51 x
  have h53 := h v47 y v52
  have h54 := S h53
  have h55 := R v52
  have h56 := h y v1 y
  have h57 := h y x x
  have h58 := C h48 (T h57 (C h56 h55))
  have h59 := S h57
  have h60 := S h56
  have h61 := C h48 (T (C h60 h55) h59)
  have h62 := C (T h53 h61) h0
  have h63 := C h45 (T (T (T (T (C (T (C (R v34) (T (T (T (T (T (T (C h45 h50) h49) h53) h61) h62) (C (T (T h58 h54) h48) h0)) (C (T h48 (C h45 (T (T h18 h25) h50))) h0))) (S (h v34 v1 y))) h13) h23) h42) h41) h50)
  have h64 := h v1 v34 x
  have h65 := h y y y
  have h66 := S h65
  let v67 := M y (M y y)
  have h68 := R (M v67 y)
  have h69 := h y x y
  have h70 := S h69
  have h71 := h v51 y v52
  have h72 := R v51
  have h73 := C h0 (C (T (C h72 (T h57 (C h69 h55))) (S h71)) h0)
  have h74 := T h73 h70
  have h75 := C h0 (C (T h71 (C h72 (T (C h70 h55) h59))) h0)
  have h76 := R (M v47 y)
  have h77 := C h74 h76
  have h78 := T h69 h75
  have h79 := C h78 (C (T h58 h54) h0)
  have h80 := h v67 y v52
  have h81 := R v67
  have h82 := C h74 h62
  have h83 := C h78 h76
  have h84 := T (T (T (T h73 h70) h56) h83) h82
  T (T (T (T (T (T (T h15 h38) h40) h44) (C h39 (T (T (T (T (T (T (T (T h43 h37) h21) h19) (C h78 h45)) (C h84 h45)) (C (T (T (T (T (T (T h79 h77) h60) h65) (C h78 h68)) (C h84 h68)) (C (T (T h79 h77) h60) (C (T h80 (C h81 (T (C h66 h55) h59))) h0))) h45)) (C (T (T (T (C (T (T h56 h83) h82) (C (T (C h81 (T h57 (C h65 h55))) (S h80)) h0)) (C (T (T (T (T h79 h77) h60) h69) h75) h68)) (C h74 h68)) h66) (T (T h64 h63) (C (T (T (T h64 h63) h49) h48) h46)))) (S (h y v1 v34))))) (C (T h40 h44) h0)) (C (T (T (T (T (T (C h39 (T (T (T h43 h37) h35) h33)) h29) h24) h16) h2) (C h13 (T (T (T (T (C h6 (C h3 h0)) (S h7)) h9) h14) (C (T h9 h14) h13)))) h0)) (C (T (C h13 (T (T (T (T (C (T h12 h10) h13) h12) h10) h7) (C h6 (C h4 h0)))) (S h2)) h0)

@[equational_result]
theorem Equation1094_implies_Equation2 (G: Type _) [Magma G] (h: Equation1094 G) : Equation2 G := fun x y =>
  let v0 := M y (M y y)
  have h1 := h y v0 v0
  have h2 := S h1
  have h3 := R v0
  have h4 := h y y y
  have h5 := C h3 (C h4 h3)
  have h6 := R x
  have h7 := C h3 (C (S h4) h3)
  let v8 := M x (M y x)
  have h9 := h y v8 v8
  have h10 := S h9
  have h11 := R v8
  have h12 := h x y y
  have h13 := C h11 (C h12 h11)
  have h14 := T (T (T h13 h10) h1) h7
  have h15 := C h14 (C h6 h14)
  have h16 := C h11 (C (S h12) h11)
  have h17 := T h9 h16
  let v18 := M x y
  let v19 := M y v18
  have h20 := h x v19 v19
  have h21 := S h20
  have h22 := R v19
  have h23 := h y x x
  have h24 := C h23 h22
  have h25 := C h22 h24
  have h26 := h v19 x y
  have h27 := R y
  have h28 := C (S h23) h22
  have h29 := C h22 h28
  have h30 := T (C h6 (C (T h20 h29) h27)) (S h26)
  have h31 := C h27 h30
  have h32 := C h17 (C (T (T (C h30 h31) h25) h21) h17)
  let v33 := M x v18
  have h34 := h v33 y y
  let v35 := M x x
  let v36 := M x v35
  let v37 := M v36 x
  let v38 := M (M v37 (M x v37)) x
  have h39 := h x v38 x
  have h40 := S h39
  have h41 := h v37 x x
  have h42 := S h41
  have h43 := R v38
  have h44 := C h43 h42
  have h45 := T h44 h40
  have h46 := S h34
  have h47 := T h13 h10
  have h48 := T h26 (C h6 (C (T h25 h21) h27))
  have h49 := C h27 h48
  have h50 := C h47 (C (T (T h20 h29) (C h48 h49)) h47)
  have h51 := T (T (T h5 h2) h9) h16
  have h52 := C h51 (C h6 h51)
  have h53 := T h1 h7
  have h54 := h v37 y x
  have h55 := S h54
  have h56 := C h53 (C (T (T (C h43 (T h55 h41)) h44) h40) h53)
  have h57 := C h43 (T h42 h54)
  have h58 := C h43 h41
  let v59 := M (M v37 (M y v37)) y
  have h60 := h x v59 x
  have h61 := h v37 x y
  have h62 := S h61
  have h63 := R v59
  have h64 := h v38 y y
  have h65 := T h5 h2
  have h66 := C h27 (T (T (T (T h34 h32) h15) (C h65 (C (T (T h39 h58) h57) h65))) (S h64))
  let v67 := M y v19
  have h68 := h v67 x y
  have h69 := h x y x
  have h70 := h x x x
  have h71 := S h70
  have h72 := R v37
  have h73 := h x y v19
  let v74 := M (M v67 (M y v67)) y
  have h75 := T (T (T (T (T (h v74 y y) (C h27 (C (T (T (T (T (T (T (C (R v74) (T (S (h v67 y y)) h68)) (C (C (T (C (T (T h49 h66) h55) (T (T (C h27 h24) (S h73)) h70)) (C h72 (T h71 h69))) h27) (T (T (T (T (S h68) h49) h66) h55) h61))) (C h63 h62)) (S h60)) h39) h58) h57) h27))) h56) h52) h50) h46
  have h76 := C h27 (T (T (T (T h64 h56) h52) h50) h46)
  have h77 := h x v36 v36
  have h78 := S h77
  have h79 := R v36
  have h80 := C h79 (C h70 h79)
  have h81 := h v36 y x
  have h82 := T h80 h78
  have h83 := C h79 (C h71 h79)
  have h84 := T h77 h83
  have h85 := T (C h27 (T (C h6 h84) (C h84 h82))) (S h81)
  let v86 := M y v35
  have h87 := T h81 (C h27 (T (C h82 h84) (C h6 h82)))
  T (T (T (T (T (T h39 h58) (h (M v38 (M x v38)) y x)) (C h27 (C (T (T (T (T (T (T (T (C h45 (C (T (T h77 h83) (C h87 (C h6 h87))) h45)) (S (h v86 x x))) (h v86 y x)) (C h27 (T (C (T (T (C h85 (C h6 h85)) h80) h78) (T h39 h58)) (C (T (T (T h60 (C h63 h61)) (C (C (T (C h72 (T (S h69) h70)) (C (T (T h54 h76) h31) (T (T h71 h73) (C h27 h28)))) h27) (T (T (T (T h62 h54) h76) h31) h68))) (C h75 (C h6 h75))) h45)))) (S (h v33 y x))) h34) h32) h15) h6))) (S (h (M v0 (M y v0)) y x))) h5) h2

@[equational_result]
theorem Equation3940_implies_Equation4358 (G: Type _) [Magma G] (h: Equation3940 G) : Equation4358 G := fun x y z =>
  let v0 := M z y
  have h1 := h x v0 v0
  let v2 := M v0 v0
  let v3 := M x v2
  let v4 := M y z
  let v5 := M x v4
  let v6 := M z v0
  have h7 := R v5
  have h8 := h v5 z y
  let v9 := M x v0
  have h10 := h (M v5 v4) y v9
  have h11 := R v9
  have h12 := R (M v9 y)
  have h13 := R v4
  have h14 := h y z v0
  have h15 := S h14
  let v16 := M z z
  let v17 := M y (M v0 z)
  have h18 := h v17 v0 v16
  have h19 := S h18
  have h20 := R v16
  have h21 := R v0
  have h22 := h z z v2
  have h23 := R v2
  have h24 := h v0 y z
  have h25 := R z
  let v26 := M z (M v0 y)
  have h27 := h v26 v0 v0
  have h28 := h z y v0
  have h29 := T (T h28 h27) (C (T (C (C h25 h24) h23) (S h22)) h21)
  have h30 := R v17
  have h31 := C (T h14 (C h30 h29)) h20
  have h32 := R x
  have h33 := h x v16 v4
  have h34 := h x v16 y
  have h35 := R y
  have h36 := h y v16 v4
  have h37 := S h28
  have h38 := T (T (C (T h22 (C (C h25 (S h24)) h23)) h21) (S h27)) h37
  have h39 := C (T (C h30 h38) h15) h20
  have h40 := h y z v4
  have h41 := S h40
  have h42 := h (M y (M v4 z)) v4 v4
  have h43 := S h42
  let v44 := M v4 v4
  have h45 := R v44
  have h46 := h v4 z y
  have h47 := h y y v44
  have h48 := T h47 (C (C h35 (S h46)) h45)
  have h49 := C h48 h13
  let v50 := M y y
  have h51 := h v50 v4 v50
  have h52 := R v50
  have h53 := T (C (C h35 h46) h45) (S h47)
  have h54 := C h53 h13
  have h55 := h y v50 v4
  have h56 := h x v50 y
  have h57 := h (M x v50) y v9
  have h58 := h x y y
  have h59 := h x y z
  have h60 := R v6
  have h61 := h z y z
  have h62 := h x z v6
  have h63 := h x z z
  have h64 := h (M x v16) z v5
  have h65 := R (M v5 z)
  have h66 := h x v16 v0
  have h67 := R v26
  have h68 := h v26 v0 v16
  have h69 := h (M v9 v0) z v5
  have h70 := h v9 y z
  have h71 := S h58
  have h72 := S h57
  have h73 := C (C (T (T (T (T (C (C h32 (T (T h14 h18) h39)) h13) (S h33)) h34) (C (C h32 (T (T h36 (C (C h35 (T (T (T (T (T (T (T h31 h19) h15) h40) h42) h54) h51) (C (T (T (C h48 (T (T h49 h43) h41)) h43) h41) h52))) h13)) (S h55))) h35)) (S h56)) h12) h11
  have h74 := h x v4 v0
  let v75 := M x (M v0 v4)
  have h76 := h x z y
  have h77 := R v75
  let v78 := M v75 v6
  T (T (T (T (T (T h74 (h v75 v0 z)) (h v78 z v5)) (C (T (C (R v78) (T (T (T (T (T h8 h10) h73) h72) h71) h59)) (C (T (T (T (T (T (T (T (T (T (T (T (T (T (T (T (h v75 v6 v9) (C (T (C h77 (T (T (C (C h32 h61) h60) (S h62)) h76)) (C h77 (T (T (T (T (T (S h76) h63) h64) (C (C (T h66 (C (C h32 (T (T (C (T h28 (C h67 h29)) h20) (S h68)) h37)) h21)) h65) h7)) (S h69)) (S h70)))) h11)) (S (h v75 y v9))) (h v75 y z)) (C (S h74) h25)) h8) h10) h73) h72) h71) h59) (C h1 h25)) (S (h v3 y z))) (h v3 y v9)) (C (C (R v3) (T (T (T (T (T (T h70 h69) (C (C (T (C (C h32 (T (T h28 h68) (C (T (C h67 h38) h37) h20))) h21) (S h66)) h65) h7)) (S h64)) (S h63)) h62) (C (C h32 (S h61)) h60))) h11)) (S (h v3 v6 v9))) (T (T (T (T (T (S h59) h58) h57) (C (C (T (T (T (T h56 (C (C h32 (T (T h55 (C (C h35 (T (T (T (T (T (T (T (C (T (T h40 h42) (C h53 (T (T h40 h42) h54))) h52) (S h51)) h49) h43) h41) h14) h18) h39)) h13)) (S h36))) h35)) (S h34)) h33) (C (C h32 (T (T h31 h19) h15)) h13)) h12) h11)) (S h10)) (S h8)))) h7)) (S (h (M v3 v6) z v5))) (S (h v3 v0 z))) (S h1)

@[equational_result]
theorem Equation2113_implies_Equation2944 (G: Type _) [Magma G] (h: Equation2113 G) : Equation2944 G := fun x y z =>
  let v0 := M y x
  let v1 := M y v0
  let v2 := M v1 z
  let v3 := M v2 z
  let v4 := M (M v3 z) v2
  have h5 := h z v1 z
  have h6 := S h5
  have h7 := T (h z v3 v2) (C (R v4) h6)
  have h8 := R z
  let v9 := M y z
  let v10 := M z z
  have h11 := h v10 v2 v9
  have h12 := S h11
  have h13 := h v0 y z
  have h14 := R v9
  have h15 := R v10
  have h16 := h v2 v3 v2
  have h17 := R v2
  have h18 := h v2 z z
  have h19 := C (T h13 (C (T h18 (C (T (C (C h5 h17) h5) (S h16)) h15)) h14)) h13
  let v20 := M v0 v0
  have h21 := h v20 x v20
  have h22 := S h21
  have h23 := R v20
  have h24 := h x y x
  have h25 := S h24
  have h26 := C h25 h23
  have h27 := h x v0 v0
  have h28 := C (T h27 (C (T (T h25 h27) h26) h23)) (T h27 h26)
  let v29 := M (M v3 v1) v2
  have h30 := h z v29 z
  have h31 := S h30
  have h32 := R v29
  have h33 := h v1 v3 v2
  have h34 := T h33 (C h32 h6)
  have h35 := C (C h34 h8) h34
  have h36 := h x v1 v0
  have h37 := S h36
  let v38 := M v1 v0
  have h39 := R v38
  have h40 := h v0 y x
  let v41 := M v1 v1
  have h42 := R v1
  have h43 := h v1 z z
  have h44 := h z y v0
  have h45 := S h44
  have h46 := C (C h45 h42) h45
  have h47 := h v1 (M v9 v0) v1
  have h48 := T h47 h46
  have h49 := h v1 (M x v0) v1
  have h50 := S h49
  have h51 := h v1 y x
  have h52 := S h51
  have h53 := h v0 v1 v0
  have h54 := S h53
  have h55 := h v38 (M v38 v0) v38
  have h56 := R v0
  have h57 := h v0 (M (M y v1) x) v0
  have h58 := T h57 (C (T (T (C h52 h56) h55) (C (T (C (T h54 h40) h39) h37) h54)) h52)
  let v59 := M v0 v1
  have h60 := h v59 (M (M v0 x) v1) v59
  have h61 := h x v0 v1
  have h62 := R v59
  have h63 := h x y v0
  have h64 := h v0 v0 v1
  have h65 := C (T (T (C (T h64 (C (T (S h63) h61) h62)) h61) (S h60)) (C h58 h42)) h58
  have h66 := T (C (T (T (C (T h36 (C (T (S h40) h53) h39)) h53) (S h55)) (C h51 h56)) h51) (S h57)
  have h67 := S h61
  have h68 := S h27
  have h69 := C h24 h23
  have h70 := S h13
  have h71 := S h47
  have h72 := C (C h44 h42) h44
  have h73 := T h72 h71
  have h74 := h (M (M z v1) z) v2 v3
  let v75 := M v2 v3
  have h76 := R v3
  have h77 := T (C h32 h5) (S h33)
  have h78 := h v3 v1 z
  have h79 := S h78
  have h80 := h v2 (M (M v1 v3) z) v2
  T (T (T (T (T (T h24 h65) h50) h47) h46) h74) (C (T (T (C (T (T (C h17 h73) h35) h31) h76) (C (T h5 (C h78 h17)) h78)) (S h80)) (T (T (T (h v75 v2 v1) (C (T (T (T (T (C (T (T (T (T (T (C (T (T h80 (C (T (C h79 h17) h6) h79)) (C (T (T h30 (C (C h77 h8) h77)) (C h17 h48)) h76)) (R v75)) (S h74)) h72) h71) h43) (C h73 (T (T (T h11 (C (T (C (T (C (T h16 (C (C h6 h17) h6)) h15) (S h18)) h14) h70) h70)) h21) (C (T (C (T (T h69 h68) h24) h23) h68) (T h69 h68))))) (T (T h49 (C (T (T (C h66 h42) h60) (C (T (C (T h67 h63) h62) (S h64)) h67)) h66)) h25)) (C (R (M v1 (M x x))) (T (T h24 h65) h50))) (C (T (C h48 (T (T (T h28 h22) h19) h12)) (S h43)) h42)) (h v41 v0 v38)) (C (T (C (T (T (C (h v0 y v0) (R v41)) (S (h v0 v1 v1))) h40) h39) h37) (T (C h40 h39) h37))) (T h35 h31))) (C (T (T (T (T h28 h22) h19) h12) (C h7 h8)) h7)) (S (h z v4 z))))

@[equational_result]
theorem Equation522_implies_Equation1374 (G: Type _) [Magma G] (h: Equation522 G) : Equation1374 G := fun x y z =>
  let v0 := M z y
  let v1 := M v0 z
  let v2 := M v1 x
  let v3 := M y v2
  have h4 := h v2 v3 y
  have h5 := S h4
  have h6 := h y v2 v2
  have h7 := S h6
  have h8 := h v3 v3 y
  have h9 := S h8
  have h10 := h y v3 v2
  have h11 := R v3
  have h12 := h v2 v3 v3
  have h13 := R y
  have h14 := C h11 (C h11 (C h13 (T h12 (C h11 (S h10)))))
  have h15 := R v2
  have h16 := h v3 v2 v3
  have h17 := C h15 (T (T (T h14 h9) h16) (C h15 (C h15 (T h14 h9))))
  have h18 := C h15 (T h17 h7)
  have h19 := C h13 (T h16 h18)
  have h20 := C h11 (C h11 h19)
  have h21 := h y v3 v3
  have h22 := C h15 (T (T (T h17 h7) h21) (C h11 (T h20 h5)))
  have h23 := h v3 y v2
  have h24 := S h23
  have h25 := C h11 (C h11 (C h13 (T (C h11 h10) (S h12))))
  have h26 := S h16
  have h27 := C h15 (T (T (T (C h15 (C h15 (T h8 h25))) h26) h8) h25)
  have h28 := C h15 (T h6 h27)
  have h29 := C h13 (T h28 h22)
  have h30 := C h13 (T (T (T (C h13 h29) h24) h16) h22)
  have h31 := h v2 y y
  have h32 := h v2 v2 y
  have h33 := S h21
  have h34 := C h13 (T h28 h26)
  have h35 := C h11 (C h11 h34)
  have h36 := C h15 (T (T (T (C h11 (T h4 h35)) h33) h6) h27)
  have h37 := C h13 (T h36 h18)
  have h38 := h y v0 v0
  have h39 := h z v0 y
  have h40 := R v0
  have h41 := T (C h40 h39) (S h38)
  have h42 := C h40 (S h39)
  have h43 := T h38 h42
  have h44 := S h31
  have h45 := C h13 (T (T (T h36 h26) h23) (C h13 h37))
  have h46 := C h15 (C h15 (T (T h29 h45) h44))
  have h47 := S (h v2 x v2)
  have h48 := R x
  have h49 := C h11 (T (T (T (T (T h19 h29) h45) h44) h4) h35)
  have h50 := C h11 (T (T (T (T (T h20 h5) h31) h30) h37) h34)
  have h51 := h y z y
  have h52 := h y v0 v3
  have h53 := S h52
  have h54 := h y z v3
  have h55 := S h54
  have h56 := T h21 h50
  have h57 := R z
  have h58 := C h57 h56
  have h59 := C h57 h58
  have h60 := C h40 (T (T (T h59 h55) h21) h50)
  have h61 := T h49 h33
  have h62 := C h57 h61
  have h63 := C h57 h62
  have h64 := C h40 (T (T (T (C h40 h60) h53) h54) h63)
  have h65 := h z v0 v0
  have h66 := h z v1 v0
  have h67 := S h66
  have h68 := C h40 (T (T (T h49 h33) h54) h63)
  have h69 := C h40 h56
  have h70 := C h43 (T h69 h68)
  have h71 := C h43 (T (T (T (C h43 h70) h67) h65) h64)
  have h72 := h v0 y y
  have h73 := C h40 (T (T (T (T (C h43 (T h72 h71)) h67) h65) h64) h60)
  have h74 := C h13 (C h13 (T h73 h53))
  have h75 := h y y v0
  have h76 := S h72
  have h77 := C h40 h61
  have h78 := C h41 (T h60 h77)
  have h79 := S h65
  have h80 := C h40 (T (T (T h59 h55) h52) (C h40 h68))
  have h81 := C h41 (T (T (T h80 h79) h66) (C h41 h78))
  have h82 := C h40 (T (T (T (T h68 h80) h79) h66) (C h41 (T h81 h76)))
  have h83 := T (T (T (C h13 (C h13 (T h52 h82))) (S h75)) h52) h82
  T (T (h x v3 y) (C h11 (C h11 (T (T (T (T (T (C h13 (T (T (T (T (T (T (T (C h48 (T h75 h74)) (C h48 h83)) (C h48 (T (T (T h73 h53) h51) (C h57 (T (T (T (T (T (T (C h57 h83) (C h57 (T (T (T h73 h53) h21) h50))) h62) h72) h71) h78) (C h13 (T (T (T h69 h68) h80) h79))))))) (C h48 (T (T (T (C h57 (T (T (T (T (T (T (C h13 (T (T (T h65 h64) h60) h77)) h70) h81) h76) h58) (C h57 (T (T (T h49 h33) h52) h82))) (C h57 (T (T (T h73 h53) h75) h74)))) (S h51)) h21) h50))) (C h48 (T (T (T (T (T h49 h33) h38) h42) (h v1 x x)) (C h48 (T (T (T (C h48 (C h48 (T h32 h46))) h47) h32) h46))))) h47) h32) h46)) (C h43 (R (M v2 (M v2 v2))))) (C h41 (T (T (T (C h15 (C h15 (T (T h31 h30) h37))) (S h32)) h31) h30))) h24) h16) h22)))) (S (h v3 v3 v2))
