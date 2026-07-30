import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure CognitiveLoadTheory where
  intrinsicLoadManaged : Prop
  extraneousLoadMinimized : Prop
  germaneLoadOptimized : Prop
  workedExamplesIntegration : Prop
  splitAttentionAvoided : Prop
  evidenceIntrinsic : intrinsicLoadManaged
  evidenceExtraneous : extraneousLoadMinimized
  evidenceGermane : germaneLoadOptimized
  evidenceWorkedExamples : workedExamplesIntegration
  evidenceSplitAttention : splitAttentionAvoided

def CognitiveLoadClosed (C : CognitiveLoadTheory) : Prop :=
  C.intrinsicLoadManaged ∧ C.extraneousLoadMinimized ∧
  C.germaneLoadOptimized ∧ C.workedExamplesIntegration ∧
  C.splitAttentionAvoided

theorem cognitive_load_closed_from_evidence (C : CognitiveLoadTheory) : CognitiveLoadClosed C := by
  exact And.intro C.evidenceIntrinsic
    (And.intro C.evidenceExtraneous
      (And.intro C.evidenceGermane
        (And.intro C.evidenceWorkedExamples C.evidenceSplitAttention)))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
