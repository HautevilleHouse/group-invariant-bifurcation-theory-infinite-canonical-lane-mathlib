import GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean.LyapunovSchmidtReduction

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure EquivariantBranchingPackage (A : AdmissibleClass) (P : LyapunovSchmidtReductionPackage A) where
  symmetryGroup : Type u
  groupActionOnParameter : symmetryGroup → ℝ → ℝ
  isotropySubgroup : symmetryGroup → Prop
  branchType : String
  bifurcationDirection : symmetryGroup → ℝ
  variationalStructure : Prop

structure EquivariantBranchingEvidence (A : AdmissibleClass) (P : LyapunovSchmidtReductionPackage A)
    (Q : EquivariantBranchingPackage A P) where
  groupActionOnParameterClosed : Q.groupActionOnParameter = λ g _ => 1
  isotropySubgroupClosed : ∀ g : Q.symmetryGroup, Q.isotropySubgroup g
  branchTypeClosed : Q.branchType = "pitchfork" ∨ Q.branchType = "transcritical"
  bifurcationDirectionClosed : ∀ g : Q.symmetryGroup, Q.bifurcationDirection g ≠ 0
  variationalStructureClosed : Q.variationalStructure

def EquivariantBranchingClosed (A : AdmissibleClass) (P : LyapunovSchmidtReductionPackage A)
    (Q : EquivariantBranchingPackage A P) : Prop :=
  (∀ g : Q.symmetryGroup, Q.groupActionOnParameter g = 1) ∧
  (∀ g : Q.symmetryGroup, Q.isotropySubgroup g) ∧
  (Q.branchType = "pitchfork" ∨ Q.branchType = "transcritical") ∧
  (∀ g : Q.symmetryGroup, Q.bifurcationDirection g ≠ 0) ∧
  Q.variationalStructure

theorem equivariant_branching_closed_from_evidence (A : AdmissibleClass)
    (P : LyapunovSchmidtReductionPackage A) (Q : EquivariantBranchingPackage A P)
    (E : EquivariantBranchingEvidence A P Q) : EquivariantBranchingClosed A P Q := by
  exact And.intro E.groupActionOnParameterClosed
    (And.intro E.isotropySubgroupClosed
      (And.intro E.branchTypeClosed
        (And.intro E.bifurcationDirectionClosed E.variationalStructureClosed)))

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse