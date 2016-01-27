﻿package com.hoya.view
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class NightDrivingClip extends ContentBase
	{	
		public function NightDrivingClip()
		{
			super();
		}
		
		override public function init():void
		{
			super.init();
		}
		
		override public function playIntro():void
		{
			super.playIntro();
			this.play();
			yesShadow.play();
			yesOverlay.play();
		}
		
		private function playNo():void
		{
			noShadow.play();
			noOverlay.play();
		}
		
		private function introComplete():void
		{
			yesNoClip.yesOverlay = yesOverlay;
			yesNoClip.noOverlay = noOverlay;
			yesNoClip.addEventListener(YesNoClip.YES_NO_CLICK, onYesNoClick);
			enable();
		}
		
		override public function enable():void
		{
			super.enable();
		}
		
		private function onYesNoClick(e:Event):void
		{
			recommender.AnswerQuestion10(yesNoClip.selectedValue);
			showNext();
		}
	}
}