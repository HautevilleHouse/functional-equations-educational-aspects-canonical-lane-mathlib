import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationBasics
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.SolutionMethods

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure JensenEquationPackage where
  convexForm : Prop
  midPointConvexity : Prop
  measurableSolution : Prop
  boundedSolution : Prop
  convexFormTerm : convexForm
  midPointConvexityTerm : midPointConvexity

structure JensenEquationEvidence (J : JensenEquationPackage) where
  convexFormClosed : J.convexForm
  midPointConvexityClosed : J.midPointConvexity
  measurableSolutionClosed : J.measurableSolution
  boundedSolutionClosed : J.boundedSolution

def JensenEquationClosed (J : JensenEquationPackage) : Prop :=
  J.convexForm ∧ J.midPointConvexity ∧ J.measurableSolution ∧ J.boundedSolution

theorem jensen_equation_closed_from_evidence (J : JensenEquationPackage)
    (E : JensenEquationEvidence J) : JensenEquationClosed J := by
  exact And.intro E.convexFormClosed
    (And.intro E.midPointConvexityClosed
      (And.intro E.measurableSolutionClosed E.boundedSolutionClosed))

structure D AlembertEquationPackage where
  cosineForm : Prop
  sineForm : Prop
  exponentialForm : Prop
  continuousSolution : Prop
  cosineFormTerm : cosineForm
  sineFormTerm : sineForm
  exponentialFormTerm : exponentialForm

structure D AlembertEquationEvidence (D : D AlembertEquationPackage) where
  cosineFormClosed : D.cosineForm
  sineFormClosed : D.sineForm
  exponentialFormClosed : D.exponentialForm
  continuousSolutionClosed : D.continuousSolution

def D AlembertEquationClosed (D : D AlembertEquationPackage) : Prop :=
  D.cosineForm ∧ D.sineForm ∧ D.exponentialForm ∧ D.continuousSolution

theorem d_alembert_equation_closed_from_evidence (D : D AlembertEquationPackage)
    (E : D AlembertEquationEvidence D) : D AlembertEquationClosed D := by
  exact And.intro E.cosineFormClosed
    (And.intro E.sineFormClosed
      (And.intro E.exponentialFormClosed E.continuousSolutionClosed))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse