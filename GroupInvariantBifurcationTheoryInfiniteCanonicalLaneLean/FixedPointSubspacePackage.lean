import canonicalLaneMathlib.BifurcationEquationPackage

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure FixedPointSubspacePackage {G : GroupActionPackage} (E : BifurcationEquationPackage G) where
  subspace : Type u
  inclusion : subspace → G.manifold
  groupInvariant : Prop
  bifurcationRestricted : Prop
  groupInvariantClosed : groupInvariant
  bifurcationRestrictedClosed : bifurcationRestricted

structure FixedPointSubspaceEvidence {G : GroupActionPackage} {E : BifurcationEquationPackage G} (F : FixedPointSubspacePackage G E) where
  groupInvariantClosed : F.groupInvariant
  bifurcationRestrictedClosed : F.bifurcationRestricted

def FixedPointSubspaceClosed {G : GroupActionPackage} {E : BifurcationEquationPackage G} (F : FixedPointSubspacePackage G E) : Prop :=
  F.groupInvariant ∧ F.bifurcationRestricted

theorem fixed_point_subspace_closed_from_evidence {G : GroupActionPackage} {E : BifurcationEquationPackage G} (F : FixedPointSubspacePackage G E) (Ev : FixedPointSubspaceEvidence F) : FixedPointSubspaceClosed F := by
  exact And.intro Ev.groupInvariantClosed Ev.bifurcationRestrictedClosed

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse