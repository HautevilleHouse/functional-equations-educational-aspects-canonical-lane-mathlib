import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

structure MethodsPackage (D : FunctionalEquationDomain) where
  analyticalMethods : Prop
  numericalMethods : Prop
  transformMethods : Prop
  asymptoticMethods : Prop

structure MethodsEvidence {D : FunctionalEquationDomain}
    (M : MethodsPackage D) where
  analyticalMethodsClosed : M.analyticalMethods
  numericalMethodsClosed : M.numericalMethods
  transformMethodsClosed : M.transformMethods
  asymptoticMethodsClosed : M.asymptoticMethods

def MethodsClosed {D : FunctionalEquationDomain}
    (M : MethodsPackage D) : Prop :=
  M.analyticalMethods ∧ M.numericalMethods ∧
  M.transformMethods ∧ M.asymptoticMethods

theorem methods_closed_from_evidence {D : FunctionalEquationDomain}
    (M : MethodsPackage D) (E : MethodsEvidence M) :
    MethodsClosed M := by
  exact And.intro E.analyticalMethodsClosed
    (And.intro E.numericalMethodsClosed
      (And.intro E.transformMethodsClosed E.asymptoticMethodsClosed))

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse