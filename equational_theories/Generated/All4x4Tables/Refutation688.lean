
import Mathlib.Data.Finite.Prod
import equational_theories.Equations.All
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,3,3,2,2],[2,4,1,2,1],[0,4,3,2,4],[0,3,3,2,1],[3,4,3,3,1]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «All4x4Tables [[0,3,3,2,2],[2,4,1,2,1],[0,4,3,2,4],[0,3,3,2,1],[3,4,3,3,1]]» : Magma (Fin 5) where
  op := finOpTable "[[0,3,3,2,2],[2,4,1,2,1],[0,4,3,2,4],[0,3,3,2,1],[3,4,3,3,1]]"

/-! The facts -/
@[equational_result]
theorem «Facts from All4x4Tables [[0,3,3,2,2],[2,4,1,2,1],[0,4,3,2,4],[0,3,3,2,1],[3,4,3,3,1]]» :
  ∃ (G : Type) (_ : Magma G) (_: Finite G), Facts G [1687] [1045, 3887] :=
    ⟨Fin 5, «All4x4Tables [[0,3,3,2,2],[2,4,1,2,1],[0,4,3,2,4],[0,3,3,2,1],[3,4,3,3,1]]», Finite.of_fintype _, by decideFin!⟩
