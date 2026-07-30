import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationBasics
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.SolutionMethods

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure CauchyEquationPackage where
  additiveForm : Prop
  multiplicativeForm : Prop
  exponentialForm : Prop
  logarithmicForm : Prop
  solutionContinuity : Prop
  solutionBoundedness : Prop
  additiveFormTerm : additiveForm
  multiplicativeFormTerm : multiplicativeForm
  exponentialFormTerm : exponentialForm
  logarithmicFormTerm : logarithmicForm

structure CauchyEquationEvidence (C : CauchyEquationPackage) where
  additiveFormClosed : C.additiveForm
  multiplicativeFormClosed : C.multiplicativeForm
  exponentialFormClosed : C.exponentialForm
  logarithmicFormClosed : C.logarithmicForm
  solutionContinuityClosed : C.solutionContinuity
  solutionBoundednessClosed : C.solutionBoundedness

def CauchyEquationClosed (C : CauchyEquationPackage) : Prop :=
  C.additiveForm ∧ C.multiplicativeForm ∧ C.exponentialForm ∧
  C.logarithmicForm ∧ C.solutionContinuity ∧ C.solutionBoundedness

theorem cauchy_equation_closed_from_evidence (C : CauchyEquationPackage)
    (E : CauchyEquationEvidence C) : CauchyEquationClosed C := by
  exact And.intro E.additiveFormClosed
    (And.intro E.multiplicativeFormClosed
      (And.intro E.exponentialFormClosed
        (And.intro E.logarithmicFormClosed
          (And.intro E.solutionContinuityClosed E.solutionBoundednessClosed))))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse