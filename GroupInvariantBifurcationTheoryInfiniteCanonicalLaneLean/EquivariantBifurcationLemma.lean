import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure EquivariantBifurcationLemmaPackage (B : BifurcationStructurePackage) (L : LiapunovSchmidtReductionPackage B) where
  groupRepresentation : Type u
  irreducibleRepresentations : List Type v
  absoluteIrreducibility : Prop
  orbitStructure : Prop
  bifurcationEquation : Type w
  bifurcationDirection : Prop
  irreducibleDecomposition : Prop

structure EquivariantBifurcationLemmaEvidence {B : BifurcationStructurePackage} {L : LiapunovSchmidtReductionPackage B} (E : EquivariantBifurcationLemmaPackage B L) where
  absoluteIrreducibilityClosed : E.absoluteIrreducibility
  orbitStructureClosed : E.orbitStructure
  bifurcationDirectionClosed : E.bifurcationDirection
  irreducibleDecompositionClosed : E.irreducibleDecomposition

def EquivariantBifurcationLemmaClosed {B : BifurcationStructurePackage} {L : LiapunovSchmidtReductionPackage B} (E : EquivariantBifurcationLemmaPackage B L) : Prop :=
  E.absoluteIrreducibility ∧ E.orbitStructure ∧ E.bifurcationDirection ∧ E.irreducibleDecomposition

theorem equivariant_bifurcation_lemma_closed_from_evidence {B : BifurcationStructurePackage} {L : LiapunovSchmidtReductionPackage B} (E : EquivariantBifurcationLemmaPackage B L) (Ev : EquivariantBifurcationLemmaEvidence E) :
    EquivariantBifurcationLemmaClosed E := by
  exact And.intro Ev.absoluteIrreducibilityClosed (And.intro Ev.orbitStructureClosed (And.intro Ev.bifurcationDirectionClosed Ev.irreducibleDecompositionClosed))

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse
