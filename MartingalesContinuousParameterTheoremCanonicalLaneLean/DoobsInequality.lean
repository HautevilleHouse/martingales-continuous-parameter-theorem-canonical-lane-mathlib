import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure DoobsInequality (Ω : Type u) [MeasureTheory.MeasurableSpace Ω] (μ : MeasureTheory.Measure Ω) where
  martingale : MartingaleProcess Ω μ
  bound : Prop
  inequality : bound

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
