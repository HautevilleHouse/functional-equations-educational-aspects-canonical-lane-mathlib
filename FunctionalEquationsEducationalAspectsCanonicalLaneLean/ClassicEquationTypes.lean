import FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationFoundations

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure ClassicEquationTypesPackage {F : FunctionalEquationFoundationsPackage} where
  cauchyEquationCovered : Prop
  jensenEquationCovered : Prop
  dAlembertEquationCovered : Prop
  quadraticEquationCovered : Prop
  pexiderEquationCovered : Prop

structure ClassicEquationTypesEvidence {F : FunctionalEquationFoundationsPackage}
    (C : ClassicEquationTypesPackage F) where
  cauchyEquationCoveredClosed : C.cauchyEquationCovered
  jensenEquationCoveredClosed : C.jensenEquationCovered
  dAlembertEquationCoveredClosed : C.dAlembertEquationCovered
  quadraticEquationCoveredClosed : C.quadraticEquationCovered
  pexiderEquationCoveredClosed : C.pexiderEquationCovered

def ClassicEquationTypesClosed {F : FunctionalEquationFoundationsPackage}
    (C : ClassicEquationTypesPackage F) : Prop :=
  C.cauchyEquationCovered ∧ C.jensenEquationCovered ∧
  C.dAlembertEquationCovered ∧ C.quadraticEquationCovered ∧
  C.pexiderEquationCovered

theorem classic_equation_types_closed_from_evidence
    {F : FunctionalEquationFoundationsPackage} (C : ClassicEquationTypesPackage F)
    (E : ClassicEquationTypesEvidence C) : ClassicEquationTypesClosed C := by
  exact And.intro E.cauchyEquationCoveredClosed
    (And.intro E.jensenEquationCoveredClosed
      (And.intro E.dAlembertEquationCoveredClosed
        (And.intro E.quadraticEquationCoveredClosed E.pexiderEquationCoveredClosed)))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse