import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace ClassicalRealComplexCoHomologyLemmaCanonicalLaneLean

structure EntireFunctionValueData where
  f : ℂ → ℂ
  order : ℕ∞
  genus : ℕ
  zeroSet : Set ℂ
  zeroMultiplicities : ℂ → ℕ
  growthOrder : Prop

def entireFunctionOrder (f : ℂ → ℂ) (hf : EntireOn ℂ f) : ℕ∞ :=
  hf.order

theorem weierstrass_factorization (f : ℂ → ℂ) (hf : EntireOn ℂ f) (hf_zeroes : Set.Nonempty (zeros f)) :
  ∃ (g : ℂ → ℂ) (hg : EntireOn ℂ g) (z_n : ℕ → ℂ) (m_n : ℕ → ℕ),
    (∀ z, f z = (∏_n (E_{p}(z / z_n))^m_n) * exp(g z)) := by
  sorry

theorem picard_small_theorem (f : ℂ → ℂ) (hf : EntireOn ℂ f) (h_nonconstant : ¬ConstantOn ℂ f) :
  Set.range f = ℂ ∨ Set.range f = ℂ \ {a} for some a := by
  sorry

structure ValueDistributionAdmissible where
  entireFunction : ℂ → ℂ
  entireFunctionAnalytic : Prop
  orderDetermined : Prop
  factorizationConstructed : Prop
  picardExceptionalsAccounted : Prop

def valueDistributionClosed (V : ValueDistributionAdmissible) : Prop :=
  V.entireFunctionAnalytic ∧ V.orderDetermined ∧ V.factorizationConstructed ∧ V.picardExceptionalsAccounted

theorem value_distribution_closed_from_admissible (V : ValueDistributionAdmissible) : valueDistributionClosed V := by
  exact And.intro V.entireFunctionAnalytic (And.intro V.orderDetermined (And.intro V.factorizationConstructed V.picardExceptionalsAccounted))

end ClassicalRealComplexCoHomologyLemmaCanonicalLaneLean
end HautevilleHouse