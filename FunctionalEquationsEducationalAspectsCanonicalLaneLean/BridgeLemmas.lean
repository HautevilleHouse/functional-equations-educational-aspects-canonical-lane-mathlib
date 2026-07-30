import FunctionalEquationsEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalEquationsEducationalAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalEquationsEducationalAspectsCanonicalLaneLean
end HautevilleHouse