import FeedbackControlCanonicalLaneLean.LyapunovStability

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

structure RobustControlPackage (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) where
  uncertaintyModel : Type
  smallGainCondition : Prop
  inputToStateStability : Prop
  robustPerformance : Prop

structure RobustControlEvidence (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) (R : RobustControlPackage A L) where
  smallGainConditionClosed : R.smallGainCondition
  inputToStateStabilityClosed : R.inputToStateStability
  robustPerformanceClosed : R.robustPerformance

def RobustControlClosed (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) (R : RobustControlPackage A L) : Prop :=
  R.smallGainCondition ∧ R.inputToStateStability ∧ R.robustPerformance

theorem robust_control_closed_from_evidence (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) (R : RobustControlPackage A L)
    (E : RobustControlEvidence A L R) : RobustControlClosed A L R := by
  exact And.intro E.smallGainConditionClosed
    (And.intro E.inputToStateStabilityClosed E.robustPerformanceClosed)

end FeedbackControlCanonicalLaneLean
end HautevilleHouse