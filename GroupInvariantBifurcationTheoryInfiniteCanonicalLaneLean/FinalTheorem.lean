import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

def ConstrainedGroupInvariantBifurcationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_invariant_bifurcation_endgame (A : AdmissibleClass) :
    ConstrainedGroupInvariantBifurcationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse