import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure StudentOutcomePackage where
  conceptualUnderstanding : Prop
  proceduralFluency : Prop
  problemSolvingSkill : Prop
  transferAbility : Prop

structure StudentOutcomeEvidence (S : StudentOutcomePackage) where
  conceptualUnderstandingClosed : S.conceptualUnderstanding
  proceduralFluencyClosed : S.proceduralFluency
  problemSolvingSkillClosed : S.problemSolvingSkill
  transferAbilityClosed : S.transferAbility

def StudentOutcomeClosed (S : StudentOutcomePackage) : Prop :=
  S.conceptualUnderstanding ∧ S.proceduralFluency ∧
  S.problemSolvingSkill ∧ S.transferAbility

theorem student_outcome_closed_from_evidence (S : StudentOutcomePackage)
    (E : StudentOutcomeEvidence S) : StudentOutcomeClosed S :=
  And.intro E.conceptualUnderstandingClosed
    (And.intro E.proceduralFluencyClosed
      (And.intro E.problemSolvingSkillClosed E.transferAbilityClosed))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse