import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationDefinitions
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.EducationalMethodology

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure FunctionalEquationAdmissibleClass where
  object : FunctionalEquation
  methodology : EducationalMethodology
  bridgeCondition : Prop
  bridgeConditionClosed : bridgeCondition

structure FunctionalEquationBridge (A : FunctionalEquationAdmissibleClass) where
  bridgeClosed : A.bridgeCondition

theorem bridge_from_admissible_class (A : FunctionalEquationAdmissibleClass) (B : FunctionalEquationBridge A) :
    B.bridgeClosed := by
  exact B.bridgeClosed

end HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse