import FunctionalEquationsEducationalAspectsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure FunctionalEquationsEducationalObject where
  domain : Type
  functionalEquation : String
  solutionMethod : String
  educationalValue : String
  conclusion : Prop

structure AdmissibleClass where
  object : FunctionalEquationsEducationalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse