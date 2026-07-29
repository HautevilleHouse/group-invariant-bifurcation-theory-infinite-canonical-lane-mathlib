import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure ModeInteractionPackage (B : BifurcationStructurePackage) (C : InfiniteCenterManifoldPackage B) where
  interactingModes : List (Type u)
  resonanceConditions : Prop
  normalForm : Type v
  modeCouplingTerms : Type w
  equivariantTruncation : Prop
  bifurcationDiagram : Type x

structure ModeInteractionEvidence {B : BifurcationStructurePackage} {C : InfiniteCenterManifoldPackage B} (M : ModeInteractionPackage B C) where
  resonanceConditionsClosed : M.resonanceConditions
  equivariantTruncationClosed : M.equivariantTruncation

def ModeInteractionClosed {B : BifurcationStructurePackage} {C : InfiniteCenterManifoldPackage B} (M : ModeInteractionPackage B C) : Prop :=
  M.resonanceConditions ∧ M.equivariantTruncation

theorem mode_interaction_closed_from_evidence {B : BifurcationStructurePackage} {C : InfiniteCenterManifoldPackage B} (M : ModeInteractionPackage B C) (E : ModeInteractionEvidence M) :
    ModeInteractionClosed M := by
  exact And.intro E.resonanceConditionsClosed E.equivariantTruncationClosed

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse
