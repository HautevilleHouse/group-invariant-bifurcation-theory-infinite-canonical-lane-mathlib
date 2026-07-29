import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure GroupActionPackage where
  groupType : Type u
  spaceType : Type v
  groupAction : groupType → spaceType → spaceType
  continuity : Prop
  smoothness : Prop
  groupActionTerm : ∀ (g : groupType) (x : spaceType), groupAction g x = groupAction g x

structure GroupActionEvidence (G : GroupActionPackage) where
  continuityClosed : G.continuity
  smoothnessClosed : G.smoothness

def GroupActionClosed (G : GroupActionPackage) : Prop :=
  G.continuity ∧ G.smoothness

theorem group_action_closed_from_evidence (G : GroupActionPackage) (E : GroupActionEvidence G) :
    GroupActionClosed G := by
  exact And.intro E.continuityClosed E.smoothnessClosed

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse