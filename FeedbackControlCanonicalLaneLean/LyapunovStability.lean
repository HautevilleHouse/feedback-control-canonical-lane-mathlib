import FeedbackControlCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

structure LyapunovStabilityPackage (A : FeedbackAdmissibleClass) where
  lyapunovFunction : Type
  lyapunovCandidates : Prop
  derivativeNegativeDefinite : Prop
  regionOfAttraction : Prop

structure LyapunovStabilityEvidence (A : FeedbackAdmissibleClass) (L : LyapunovStabilityPackage A) where
  lyapunovCandidatesClosed : L.lyapunovCandidates
  derivativeNegativeDefiniteClosed : L.derivativeNegativeDefinite
  regionOfAttractionClosed : L.regionOfAttraction

def LyapunovStabilityClosed (A : FeedbackAdmissibleClass) (L : LyapunovStabilityPackage A) : Prop :=
  L.lyapunovCandidates ∧ L.derivativeNegativeDefinite ∧ L.regionOfAttraction

theorem lyapunov_stability_closed_from_evidence (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) (E : LyapunovStabilityEvidence A L) :
    LyapunovStabilityClosed A L := by
  exact And.intro E.lyapunovCandidatesClosed
    (And.intro E.derivativeNegativeDefiniteClosed E.regionOfAttractionClosed)

end FeedbackControlCanonicalLaneLean
end HautevilleHouse