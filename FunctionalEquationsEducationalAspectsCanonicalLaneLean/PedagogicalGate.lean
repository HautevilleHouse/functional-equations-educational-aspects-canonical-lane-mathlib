import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationDefinitions

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

definition gateClosed (A : FunctionalEquationAdmissibleClass) : Prop :=
  A.methodology.effectiveness ∨ A.bridgeCondition

theorem gate_from_admissible_class (A : FunctionalEquationAdmissibleClass) (h : A.bridgeCondition) :
    gateClosed A := by
  exact Or.inr h

end HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse