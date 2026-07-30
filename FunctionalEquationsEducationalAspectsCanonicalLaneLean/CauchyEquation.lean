import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationDefinitions

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure CauchyEquation where
  additiveEquation : FunctionalEquation ℝ ℝ
  multiplicativeEquation : FunctionalEquation ℝ ℝ
  solutionClass : Set (ℝ → ℝ)
  rationalSolutionsIdentified : Prop
  continuousSolutionsIdentified : Prop

structure CauchyEquationEvidence (C : CauchyEquation) where
  additiveEquationClosed : FunctionalEquationClosed C.additiveEquation
  multiplicativeEquationClosed : FunctionalEquationClosed C.multiplicativeEquation
  rationalSolutionsIdentifiedClosed : C.rationalSolutionsIdentified
  continuousSolutionsIdentifiedClosed : C.continuousSolutionsIdentified

def CauchyEquationClosed (C : CauchyEquation) : Prop :=
  FunctionalEquationClosed C.additiveEquation ∧
  FunctionalEquationClosed C.multiplicativeEquation ∧
  C.rationalSolutionsIdentified ∧
  C.continuousSolutionsIdentified

theorem cauchy_equation_closed_from_evidence
    (C : CauchyEquation) (E : CauchyEquationEvidence C) :
    CauchyEquationClosed C := by
  exact And.intro E.additiveEquationClosed
    (And.intro E.multiplicativeEquationClosed
      (And.intro E.rationalSolutionsIdentifiedClosed
        E.continuousSolutionsIdentifiedClosed))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse