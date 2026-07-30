import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.FunctionalEquationBasics
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.SolutionMethods
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.CauchyEquations
import HautevilleHouse.FunctionalEquationsEducationalAspectsCanonicalLaneLean.JensenD Alembert

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure PedagogicalFramework where
  learningObjectives : Prop
  prerequisiteConcepts : Prop
  exampleProgression : Prop
  assessmentMethods : Prop
  linkingToOtherFields : Prop
  learningObjectivesTerm : learningObjectives
  prerequisiteConceptsTerm : prerequisiteConcepts
  exampleProgressionTerm : exampleProgression

structure PedagogicalFrameworkEvidence (P : PedagogicalFramework) where
  learningObjectivesClosed : P.learningObjectives
  prerequisiteConceptsClosed : P.prerequisiteConcepts
  exampleProgressionClosed : P.exampleProgression
  assessmentMethodsClosed : P.assessmentMethods
  linkingToOtherFieldsClosed : P.linkingToOtherFields

def PedagogicalFrameworkClosed (P : PedagogicalFramework) : Prop :=
  P.learningObjectives ∧ P.prerequisiteConcepts ∧ P.exampleProgression ∧
  P.assessmentMethods ∧ P.linkingToOtherFields

theorem pedagogical_framework_closed_from_evidence (P : PedagogicalFramework)
    (E : PedagogicalFrameworkEvidence P) : PedagogicalFrameworkClosed P := by
  exact And.intro E.learningObjectivesClosed
    (And.intro E.prerequisiteConceptsClosed
      (And.intro E.exampleProgressionClosed
        (And.intro E.assessmentMethodsClosed E.linkingToOtherFieldsClosed)))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse