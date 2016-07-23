require 'test_helper'

class LcbUserRewardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_user_reward = lcb_user_rewards(:one)
  end

  test "should get index" do
    get lcb_user_rewards_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_user_reward_url
    assert_response :success
  end

  test "should create lcb_user_reward" do
    assert_difference('LcbUserReward.count') do
      post lcb_user_rewards_url, params: { lcb_user_reward: { activity_num: @lcb_user_reward.activity_num, create_uid: @lcb_user_reward.create_uid, give_out: @lcb_user_reward.give_out, id: @lcb_user_reward.id, lcb_user_id: @lcb_user_reward.lcb_user_id, owner_id: @lcb_user_reward.owner_id, reward_desc: @lcb_user_reward.reward_desc, reward_num: @lcb_user_reward.reward_num, write_uid: @lcb_user_reward.write_uid } }
    end

    assert_redirected_to lcb_user_reward_path(LcbUserReward.last)
  end

  test "should show lcb_user_reward" do
    get lcb_user_reward_url(@lcb_user_reward)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_user_reward_url(@lcb_user_reward)
    assert_response :success
  end

  test "should update lcb_user_reward" do
    patch lcb_user_reward_url(@lcb_user_reward), params: { lcb_user_reward: { activity_num: @lcb_user_reward.activity_num, create_uid: @lcb_user_reward.create_uid, give_out: @lcb_user_reward.give_out, id: @lcb_user_reward.id, lcb_user_id: @lcb_user_reward.lcb_user_id, owner_id: @lcb_user_reward.owner_id, reward_desc: @lcb_user_reward.reward_desc, reward_num: @lcb_user_reward.reward_num, write_uid: @lcb_user_reward.write_uid } }
    assert_redirected_to lcb_user_reward_path(@lcb_user_reward)
  end

  test "should destroy lcb_user_reward" do
    assert_difference('LcbUserReward.count', -1) do
      delete lcb_user_reward_url(@lcb_user_reward)
    end

    assert_redirected_to lcb_user_rewards_path
  end
end
