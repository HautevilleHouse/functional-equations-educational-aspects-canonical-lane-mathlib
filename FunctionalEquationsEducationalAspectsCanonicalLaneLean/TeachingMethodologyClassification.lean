import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure TeachingMethodologyPackage where
  methodologyName : String
  activeLearningComponent : Prop
  problemSolvingComponent : Prop
  collaborativeComponent : Prop
  feedbackComponent : Prop

structure TeachingMethodologyEvidence (T : TeachingMethodologyPackage) where
  activeLearningComponentClosed : T.activeLearningComponent
  problemSolvingComponentClosed : T.problemSolvingComponent
  collaborativeComponentClosed : T.collaborativeComponent
  feedbackComponentClosed : T.feedbackComponent

def TeachingMethodologyClosed (T : TeachingMethodologyPackage) : Prop :=
  T.activeLearningComponent ∧ T.problemSolvingComponent ∧
  T.collaborativeComponent ∧ T.feedbackComponent

theorem teaching_methodology_closed_from_evidence (T : TeachingMethodologyPackage)
    (E : TeachingMethodologyEvidence T) : TeachingMethodologyClosed T :=
  And.intro E.activeLearningComponentClosed
    (And.intro E.problemSolvingComponentClosed
      (And.intro E.collaborativeComponentClosed E.feedbackComponentClosed))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse