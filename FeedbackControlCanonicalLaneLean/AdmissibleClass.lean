import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

structure ControlAdmittedObject where
  plantModel : Prop
  controllerDesigned : Prop
  closedLoopStable : Prop
  controlObjectiveMet : Prop
  conclusion : controlObjectiveMet

def admittedClosure (A : ControlAdmittedObject) : Prop :=
  A.controlObjectiveMet

end FeedbackControlCanonicalLaneLean
end HautevilleHouse
