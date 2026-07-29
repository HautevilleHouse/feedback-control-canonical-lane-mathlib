import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

def controlTheoremStatement : Prop :=
  admittedClosure (ControlAdmittedObject.mk True True True True True)

theorem control_theorem_holds : controlTheoremStatement := by
  unfold controlTheoremStatement
  simp

end FeedbackControlCanonicalLaneLean
end HautevilleHouse