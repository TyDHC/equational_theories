
import Mathlib.Data.Finite.Prod
import equational_theories.Equations.All
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[1,2,4,2,0],[3,4,1,1,1],[3,2,4,2,2],[3,3,3,4,3],[3,4,4,4,4]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «All4x4Tables [[1,2,4,2,0],[3,4,1,1,1],[3,2,4,2,2],[3,3,3,4,3],[3,4,4,4,4]]» : Magma (Fin 5) where
  op := finOpTable "[[1,2,4,2,0],[3,4,1,1,1],[3,2,4,2,2],[3,3,3,4,3],[3,4,4,4,4]]"

/-! The facts -/
@[equational_result]
theorem «Facts from All4x4Tables [[1,2,4,2,0],[3,4,1,1,1],[3,2,4,2,2],[3,3,3,4,3],[3,4,4,4,4]]» :
  ∃ (G : Type) (_ : Magma G) (_: Finite G), Facts G [443] [3862] :=
    ⟨Fin 5, «All4x4Tables [[1,2,4,2,0],[3,4,1,1,1],[3,2,4,2,2],[3,3,3,4,3],[3,4,4,4,4]]», Finite.of_fintype _, by decideFin!⟩
