# Ruby Tapas Video Mover

**Problem:**

I have a bunch of 300+ RubyTapas videos from iTunes Feed that I need
to transfer to their own directory. I use a script to download all non-video
files of each ruby tapas episode.

Example (non video files):

```
[001_post-18]
  --> 001-binary-literals.html
  --> 001-binary-literals.rb
  --> description.html
  --> item.html
```

Example (video file/s):
```
001 Binary Literals.mp4
011_ Method and Message.mp4
```

**Solution:**
Create a script to transfer the video files to their corresponding non video
files folder. I use the [downloader](https://github.com/bf4/downloader) by
Benjamin Fleischer to download all the non-video files and use the iTunes Feed
of RubyTapas to download the videos.

# Instructions
- clone `https://github.com/iamarmanjon/ruby_tapas_mover.git`
- use the downloader to generate a directory with all non video files, rename
  this directory to `non_video_files`
- copy all the ruby tapas videos to a folder name `video_files`
- the two directories must be in the root folder of this repo
- run `ruby ruby_tapas_mover.rb`, you'll see the logs of files transferred

# Contribute
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'add new feature')
4. Push your branch (`git push origin my-new-feature`)
5. Create new pull request


