class CounterCacheResetWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'later'

  def perform
    CounterCacheResets.media_user_counts
    CounterCacheResets.favorite_counts
    CounterCacheResets.follow_counts
  end
end
