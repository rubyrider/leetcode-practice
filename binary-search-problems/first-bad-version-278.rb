# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  return 1 if is_bad_version(1)

  bad_version_look_up(0, n)
end

def bad_version_look_up(min, max)
  return if min > max

  return min if is_bad_version(min)

  mid = (min + max)/2

  if is_bad_version(mid)
    bad_version_look_up(min+1, mid)
  else
    bad_version_look_up(mid+1, max)
  end
end

def is_bad_version(n)
  bad_version = 10000

  bad_version == n
end