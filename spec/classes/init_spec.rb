require "spec_helper"

describe "course_selector" do
  let(:node) { 'test.example.com' }

  let(:facts) { {
    :puppetversion => "4.5.3",
    :os => {
      :family => 'RedHat',
      :release => {
        :major => '7',
        :minor => '2',
      }
    },
  } }

  it { is_expected.to compile.with_all_deps }

end
