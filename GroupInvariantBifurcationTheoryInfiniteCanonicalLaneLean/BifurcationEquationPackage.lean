import canonicalLaneMathlib.GroupActionPackage

namespace HautevilleHouse
namespace GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean

structure BifurcationEquationPackage {G : GroupActionPackage} where
  functionSpace : Type u
  parameter : Type v
  equation : (parameter → functionSpace → functionSpace) → Prop
  groupEquivariance : Prop
  parameterDependence : Prop
  groupEquivarianceClosed : groupEquivariance
  parameterDependenceClosed : parameterDependence

structure BifurcationEquationEvidence {G : GroupActionPackage} (E : BifurcationEquationPackage G) where
  groupEquivarianceClosed : E.groupEquivariance
  parameterDependenceClosed : E.parameterDependence

def BifurcationEquationClosed {G : GroupActionPackage} (E : BifurcationEquationPackage G) : Prop :=
  E.groupEquivariance ∧ E.parameterDependence

theorem bifurcation_equation_closed_from_evidence {G : GroupActionPackage} (E : BifurcationEquationPackage G) (Ev : BifurcationEquationEvidence E) : BifurcationEquationClosed E := by
  exact And.intro Ev.groupEquivarianceClosed Ev.parameterDependenceClosed

end GroupInvariantBifurcationTheoryInfiniteCanonicalLaneLean
end HautevilleHouse