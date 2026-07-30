import canonicalLaneMathlib.AdmissibleClass
import MartingalesContinuousParameterTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MartingaleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse