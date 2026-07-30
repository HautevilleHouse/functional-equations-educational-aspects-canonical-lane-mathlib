import FunctionalEquationsEducationalAspectsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse