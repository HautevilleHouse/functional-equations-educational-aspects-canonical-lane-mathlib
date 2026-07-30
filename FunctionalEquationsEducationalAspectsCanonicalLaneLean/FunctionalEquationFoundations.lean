import FunctionalEquationsEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure FunctionalEquationFoundationsPackage where
  domainTheoryEstablished : Prop
  rangeTheoryEstablished : Prop
  injectionTechniquesCovered : Prop
  surjectionCriteriaCovered : Prop
  compositionMethodsCovered : Prop

structure FunctionalEquationFoundationsEvidence (F : FunctionalEquationFoundationsPackage) where
  domainTheoryEstablishedClosed : F.domainTheoryEstablished
  rangeTheoryEstablishedClosed : F.rangeTheoryEstablished
  injectionTechniquesCoveredClosed : F.injectionTechniquesCovered
  surjectionCriteriaCoveredClosed : F.surjectionCriteriaCovered
  compositionMethodsCoveredClosed : F.compositionMethodsCovered

def FunctionalEquationFoundationsClosed (F : FunctionalEquationFoundationsPackage) : Prop :=
  F.domainTheoryEstablished ∧ F.rangeTheoryEstablished ∧
  F.injectionTechniquesCovered ∧ F.surjectionCriteriaCovered ∧
  F.compositionMethodsCovered

theorem functional_equation_foundations_closed_from_evidence
    (F : FunctionalEquationFoundationsPackage) (E : FunctionalEquationFoundationsEvidence F) :
    FunctionalEquationFoundationsClosed F := by
  exact And.intro E.domainTheoryEstablishedClosed
    (And.intro E.rangeTheoryEstablishedClosed
      (And.intro E.injectionTechniquesCoveredClosed
        (And.intro E.surjectionCriteriaCoveredClosed E.compositionMethodsCoveredClosed)))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse