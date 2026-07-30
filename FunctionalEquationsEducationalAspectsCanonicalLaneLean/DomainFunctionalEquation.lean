import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure FunctionalEquationDomain where
  equation : String
  solutionSpace : Prop
  initialConditions : Prop
  boundaryConditions : Prop
  existence : Prop
  uniqueness : Prop
  stability : Prop

structure DomainEvidence (D : FunctionalEquationDomain) where
  solutionSpaceClosed : D.solutionSpace
  initialConditionsClosed : D.initialConditions
  boundaryConditionsClosed : D.boundaryConditions
  existenceClosed : D.existence
  uniquenessClosed : D.uniqueness
  stabilityClosed : D.stability

def DomainClosed (D : FunctionalEquationDomain) : Prop :=
  D.solutionSpace ∧ D.initialConditions ∧ D.boundaryConditions ∧
  D.existence ∧ D.uniqueness ∧ D.stability

theorem domain_closed_from_evidence (D : FunctionalEquationDomain)
    (E : DomainEvidence D) : DomainClosed D := by
  exact And.intro E.solutionSpaceClosed
    (And.intro E.initialConditionsClosed
      (And.intro E.boundaryConditionsClosed
        (And.intro E.existenceClosed
          (And.intro E.uniquenessClosed E.stabilityClosed))))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse