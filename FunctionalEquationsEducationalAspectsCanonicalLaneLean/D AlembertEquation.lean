import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationDefinitions

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure DAlembertEquation where
  equation : FunctionalEquation ℝ ℝ
  cosineFunctionSolution : Prop
  exponentialSolution : Prop
  dAlembertPrinciple : Prop

structure DAlembertEquationEvidence (D : DAlembertEquation) where
  equationClosed : FunctionalEquationClosed D.equation
  cosineFunctionSolutionClosed : D.cosineFunctionSolution
  exponentialSolutionClosed : D.exponentialSolution
  dAlembertPrincipleClosed : D.dAlembertPrinciple

def DAlembertEquationClosed (D : DAlembertEquation) : Prop :=
  FunctionalEquationClosed D.equation ∧
  D.cosineFunctionSolution ∧
  D.exponentialSolution ∧
  D.dAlembertPrinciple

theorem d_alembert_equation_closed_from_evidence
    (D : DAlembertEquation) (E : DAlembertEquationEvidence D) :
    DAlembertEquationClosed D := by
  exact And.intro E.equationClosed
    (And.intro E.cosineFunctionSolutionClosed
      (And.intro E.exponentialSolutionClosed
        E.dAlembertPrincipleClosed))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse