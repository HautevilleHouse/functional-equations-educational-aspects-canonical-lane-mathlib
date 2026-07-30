import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationBasics

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure SolutionMethod where
  methodName : String
  applicableEquations : Prop
  stepByStepProcedure : Prop
  examplesDemonstrated : Prop
  generalizations : Prop
  stepByStepProcedureTerm : stepByStepProcedure
  examplesDemonstratedTerm : examplesDemonstrated

structure SolutionMethodEvidence (M : SolutionMethod) where
  applicableEquationsClosed : M.applicableEquations
  stepByStepProcedureClosed : M.stepByStepProcedure
  examplesDemonstratedClosed : M.examplesDemonstrated
  generalizationsClosed : M.generalizations

def SolutionMethodClosed (M : SolutionMethod) : Prop :=
  M.applicableEquations ∧ M.stepByStepProcedure ∧ M.examplesDemonstrated ∧ M.generalizations

theorem solution_method_closed_from_evidence (M : SolutionMethod)
    (E : SolutionMethodEvidence M) : SolutionMethodClosed M := by
  exact And.intro E.applicableEquationsClosed
    (And.intro E.stepByStepProcedureClosed
      (And.intro E.examplesDemonstratedClosed E.generalizationsClosed))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse