import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationDefinitions

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure JensenEquation where
  equation : FunctionalEquation ℝ ℝ
  convexityCondition : Prop
  affineSolutions : Prop
  stabilityUnderLimits : Prop

structure JensenEquationEvidence (J : JensenEquation) where
  equationClosed : FunctionalEquationClosed J.equation
  convexityConditionClosed : J.convexityCondition
  affineSolutionsClosed : J.affineSolutions
  stabilityUnderLimitsClosed : J.stabilityUnderLimits

def JensenEquationClosed (J : JensenEquation) : Prop :=
  FunctionalEquationClosed J.equation ∧
  J.convexityCondition ∧
  J.affineSolutions ∧
  J.stabilityUnderLimits

theorem jensen_equation_closed_from_evidence
    (J : JensenEquation) (E : JensenEquationEvidence J) :
    JensenEquationClosed J := by
  exact And.intro E.equationClosed
    (And.intro E.convexityConditionClosed
      (And.intro E.affineSolutionsClosed
        E.stabilityUnderLimitsClosed))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse