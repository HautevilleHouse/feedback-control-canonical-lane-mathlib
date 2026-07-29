import FeedbackControlCanonicalLaneLean.OptimalControl

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

def ConstrainedFeedbackControlClosure (A : FeedbackAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

def gateClosed (A : FeedbackAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FeedbackAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

theorem constrained_feedback_control_endgame (A : FeedbackAdmissibleClass) :
    ConstrainedFeedbackControlClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FeedbackControlCanonicalLaneLean
end HautevilleHouse