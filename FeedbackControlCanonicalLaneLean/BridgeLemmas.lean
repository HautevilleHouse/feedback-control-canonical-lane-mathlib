import FeedbackControlCanonicalLaneLean.ConstrainAdmissibleClass

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

def bridgeClosed (A : FeedbackAdmissibleClass) : Prop :=
  FeedbackWitnessClosed A.object

definition FeedbackWitnessClosed (O : ControlAdmissibleObject) : Prop :=
  O.closedLoopStable ∧ O.disturbanceRejection ∧ O.trackingErrorBounded

theorem bridge_from_admissible_class (A : FeedbackAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FeedbackControlCanonicalLaneLean
end HautevilleHouse