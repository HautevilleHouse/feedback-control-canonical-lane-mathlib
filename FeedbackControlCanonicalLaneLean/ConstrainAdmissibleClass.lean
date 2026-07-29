import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

structure ControlAdmissibleObject where
  plantModel : Type
  controller : Type
  closedLoopStable : Prop
  disturbanceRejection : Prop
  trackingErrorBounded : Prop
  conclusion : closedLoopStable ∧ disturbanceRejection ∧ trackingErrorBounded

structure FeedbackAdmissibleClass where
  object : ControlAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def feedbackAdmittedClosure (A : FeedbackAdmissibleClass) : Prop :=
  FeedbackWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FeedbackControlCanonicalLaneLean
end HautevilleHouse