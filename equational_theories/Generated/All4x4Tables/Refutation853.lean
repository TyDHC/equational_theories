
import Mathlib.Data.Finite.Prod
import equational_theories.Equations.All
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[1,2,3,5,5,0,1],[4,2,3,1,5,6,1],[4,2,3,5,5,2,1],[4,2,3,5,5,6,3],[4,2,4,1,5,6,4],[4,5,3,5,5,6,1],[4,2,6,5,5,6,1]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «All4x4Tables [[1,2,3,5,5,0,1],[4,2,3,1,5,6,1],[4,2,3,5,5,2,1],[4,2,3,5,5,6,3],[4,2,4,1,5,6,4],[4,5,3,5,5,6,1],[4,2,6,5,5,6,1]]» : Magma (Fin 7) where
  op := finOpTable "[[1,2,3,5,5,0,1],[4,2,3,1,5,6,1],[4,2,3,5,5,2,1],[4,2,3,5,5,6,3],[4,2,4,1,5,6,4],[4,5,3,5,5,6,1],[4,2,6,5,5,6,1]]"

/-! The facts -/
@[equational_result]
theorem «Facts from All4x4Tables [[1,2,3,5,5,0,1],[4,2,3,1,5,6,1],[4,2,3,5,5,2,1],[4,2,3,5,5,6,3],[4,2,4,1,5,6,4],[4,5,3,5,5,6,1],[4,2,6,5,5,6,1]]» :
  ∃ (G : Type) (_ : Magma G) (_: Finite G), Facts G [653] [47, 817, 1426, 3862, 4065] :=
    ⟨Fin 7, «All4x4Tables [[1,2,3,5,5,0,1],[4,2,3,1,5,6,1],[4,2,3,5,5,2,1],[4,2,3,5,5,6,3],[4,2,4,1,5,6,4],[4,5,3,5,5,6,1],[4,2,6,5,5,6,1]]», Finite.of_fintype _, by decideFin!⟩
