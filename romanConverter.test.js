import { calculate } from './index';

describe('calculate', () => {
  it('should return 1 for input "I"', () => {
    expect(calculate('I')).toBe(1);
  });

  it('should return 4 for input "IV"', () => {
    expect(calculate('IV')).toBe(4);
  });

  it('should return 9 for input "IX"', () => {
    expect(calculate('IX')).toBe(9);
  });

  it('should return 40 for input "XL"', () => {
    expect(calculate('XL')).toBe(40);
  });

  it('should return 49 for input "XLIX"', () => {
    expect(calculate('XLIX')).toBe(49);
  });

  it('should return 90 for input "XC"', () => {
    expect(calculate('XC')).toBe(90);
  });

  it('should return 99 for input "XCIX"', () => {
    expect(calculate('XCIX')).toBe(99);
  });

  it('should return 400 for input "CD"', () => {
    expect(calculate('CD')).toBe(400);
  });

  it('should return 499 for input "CDXCIX"', () => {
    expect(calculate('CDXCIX')).toBe(499);
  });

  it('should return 900 for input "CM"', () => {
    expect(calculate('CM')).toBe(900);
  });

  it('should return 999 for input "CMXCIX"', () => {
    expect(calculate('CMXCIX')).toBe(999);
  });

  it('should return 3999 for input "MMMCMXCIX"', () => {
    expect(calculate('MMMCMXCIX')).toBe(3999);
  });

  it('should return 0 for empty input', () => {
    expect(calculate('')).toBe(0);
  });

  it('should return 0 for invalid input', () => {
    expect(calculate('hello')).toBe(0);
    expect(calculate('123')).toBe(0);
    expect(calculate('MCMXCVI')).toBe(0);
  });
});