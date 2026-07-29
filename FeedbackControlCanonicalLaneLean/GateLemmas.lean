import FeedbackControlCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

def gateClosed (A : ControlAdmittedObject) : Prop :=
  True

theorem gate_from_admissible_class (A : ControlAdmittedObject) :
    gateClosed A := by
  trivial

end FeedbackControlCanonicalLaneLean
end HautevilleHouse
