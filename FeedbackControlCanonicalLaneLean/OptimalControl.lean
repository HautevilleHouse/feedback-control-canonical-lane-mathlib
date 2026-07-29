import FeedbackControlCanonicalLaneLean.RobustControl

namespace HautevilleHouse
namespace FeedbackControlCanonicalLaneLean

structure OptimalControlPackage (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) (R : RobustControlPackage A L) where
  costFunctional : Type
  hjbEquation : Prop
  optimalPolicy : Prop
  valueFunction : Prop

structure OptimalControlEvidence (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) (R : RobustControlPackage A L)
    (O : OptimalControlPackage A L R) where
  hjbEquationClosed : O.hjbEquation
  optimalPolicyClosed : O.optimalPolicy
  valueFunctionClosed : O.valueFunction

def OptimalControlClosed (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) (R : RobustControlPackage A L)
    (O : OptimalControlPackage A L R) : Prop :=
  O.hjbEquation ∧ O.optimalPolicy ∧ O.valueFunction

theorem optimal_control_closed_from_evidence (A : FeedbackAdmissibleClass)
    (L : LyapunovStabilityPackage A) (R : RobustControlPackage A L)
    (O : OptimalControlPackage A L R) (E : OptimalControlEvidence A L R O) :
    OptimalControlClosed A L R O := by
  exact And.intro E.hjbEquationClosed
    (And.intro E.optimalPolicyClosed E.valueFunctionClosed)

end FeedbackControlCanonicalLaneLean
end HautevilleHouse