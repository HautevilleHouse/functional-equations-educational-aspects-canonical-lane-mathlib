import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure AssessmentValidity where
  contentValidity : Prop
  constructValidity : Prop
  criterionValidity : Prop
  reliability : Prop
  practicality : Prop
  evidenceContent : contentValidity
  evidenceConstruct : constructValidity
  evidenceCriterion : criterionValidity
  evidenceReliability : reliability
  evidencePracticality : practicality

def AssessmentClosed (A : AssessmentValidity) : Prop :=
  A.contentValidity ∧ A.constructValidity ∧
  A.criterionValidity ∧ A.reliability ∧ A.practicality

theorem assessment_closed_from_evidence (A : AssessmentValidity) : AssessmentClosed A := by
  exact And.intro A.evidenceContent
    (And.intro A.evidenceConstruct
      (And.intro A.evidenceCriterion
        (And.intro A.evidenceReliability A.evidencePracticality)))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
