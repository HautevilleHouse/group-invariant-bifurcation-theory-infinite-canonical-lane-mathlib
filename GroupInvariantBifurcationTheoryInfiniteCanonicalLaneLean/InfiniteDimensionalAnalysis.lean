import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean.GroupInvariantBifurcation

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure FrechetDerivative (M : Type u) (N : Type v) where
  derivative : M → (M → N)
  linearity : ∀ x, LinearMap ℝ M N (derivative x)
  boundedness : Prop

structure ImplicitFunctionTheorem (M : Type u) (α : Type v) (N : Type w) where
  mapping : M × α → N
  derivativeInMInvertibleAtPoint : BifurcationPoint M α → Prop
  localSolution : (BifurcationPoint M α) → (α → M)
  uniqueness : Prop

structure FredholmOperator (M : Type u) (N : Type v) where
  operator : M → N
  linear : LinearMap ℝ M N operator
  index : ℤ
  indexInfinite : Prop

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse
