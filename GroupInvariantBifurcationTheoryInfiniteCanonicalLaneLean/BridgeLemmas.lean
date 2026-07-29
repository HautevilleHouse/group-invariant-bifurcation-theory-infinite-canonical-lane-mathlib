import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BifurcationInfiniteClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse