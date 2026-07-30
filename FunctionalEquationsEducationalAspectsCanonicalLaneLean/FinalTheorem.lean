import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationOperations
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.ClassicalEquations

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

def ConstrainedFunctionalEquationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_equations_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalEquationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse