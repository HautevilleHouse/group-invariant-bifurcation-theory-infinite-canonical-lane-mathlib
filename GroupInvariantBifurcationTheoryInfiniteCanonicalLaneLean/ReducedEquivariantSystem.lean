import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean.EquivariantBranching

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure ReducedSystem (N : Type u) (α : Type v) where
  stateSpace : N
  parameterSpace : α
  reducedMapping : N × α → N
  equivariance : ∀ (g : G) (x : N) (a : α), groupAction.action g (reducedMapping (x, a)) = reducedMapping (groupAction.action g x, a)
  finiteDimensional : Prop
  where groupAction : GroupAction G N

structure NormalForm (N : Type u) (α : Type v) where
  polynomialTerms : List (N × α → N)
  symmetryAdmissible : Prop
  truncationOrder : ℕ
  PoincareNormalForm : Prop

structure CenterManifold (M : Type u) (α : Type v) where
  centerSpace : Set M
  reducedFlow : α → (centerSpace → centerSpace)
  existence : Prop
  attractivity : Prop

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse
